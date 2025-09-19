/*
  # Add cars field to properties table

  1. Changes
    - Add `cars` column to `properties` table (integer, default 0)
    - This represents the number of parking spaces/garage spots available

  2. Notes
    - Default value of 0 for properties without parking
    - Non-nullable field with sensible default
*/

DO $$
BEGIN
  IF NOT EXISTS (
    SELECT 1 FROM information_schema.columns
    WHERE table_name = 'properties' AND column_name = 'cars'
  ) THEN
    ALTER TABLE properties ADD COLUMN cars integer DEFAULT 0 NOT NULL;
  END IF;
END $$;