% Name:Tommy Lee Truong
% Last Edit:Oct 31 2019
% Program Name: Homework 8
clc; close all; clear all
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
x_nodes = [1 2 3 4];
y_values = [1 4 9 16];
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
y = NewtonDivDiff(x_nodes,y_values);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
x_eval = [1 2 1 1 1];
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
p_eval = interp(x_nodes,y,x_eval)