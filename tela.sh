#!/bin/bash

clear;

# Function to draw top border
draw_top_border() {
  cols=$(tput cols);
  tput cup 0 0;
  echo "+";
  for ((col=1; col < cols; col++)); do
    tput cup 0 $col;
    echo "=";
  done
  tput cup 0 $cols;
  echo "+";
}

# Function to draw middle vertical borders
draw_vertical_borders() {
  lines=$(tput lines);
  cols=$(tput cols);
  for ((line=1; line < (lines - 1); line++)); do
    tput cup $line 0;
    echo "¦";
    tput cup $line $cols;
    echo "¦";
  done
}

# Function to draw bottom border
draw_bottom_border() {
  lines=$(tput lines);
  cols=$(tput cols);
  tput cup $((lines - 1)) 0;
  echo "+";
  for ((col=1; col < cols; col++)); do
    tput cup $((lines - 2)) $col;
    echo "=";
  done
  tput cup $((lines - 2)) $cols;
  echo "+";
}

# Main function to draw the frame
draw_frame() {
  clear;
  draw_top_border;
  draw_vertical_borders;
  draw_bottom_border;
  
}

# Call the main function to draw the frame
draw_frame;

