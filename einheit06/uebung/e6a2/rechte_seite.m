function z = rechte_seite(t,y)
z = [y(1)-y(1)*y(2); -y(2) + y(2)*y(1)];