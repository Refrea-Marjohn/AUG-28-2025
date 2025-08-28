-- Add created_by_employee_id column to case_schedules table
ALTER TABLE `case_schedules` 
ADD COLUMN `created_by_employee_id` int(11) DEFAULT NULL AFTER `location`;

-- Add index for better performance
ALTER TABLE `case_schedules` 
ADD INDEX `idx_created_by_employee` (`created_by_employee_id`);

-- Add foreign key constraint (optional - for referential integrity)
-- ALTER TABLE `case_schedules` 
-- ADD CONSTRAINT `fk_case_schedules_employee` 
-- FOREIGN KEY (`created_by_employee_id`) REFERENCES `user_form`(`id`) 
-- ON DELETE SET NULL ON UPDATE CASCADE;
