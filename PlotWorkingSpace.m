function [retval] = PlotWorkingSpace (l1, l2,l3,MinQ1,maxQ1,MinQ2,maxQ2,MinQ3,maxQ3)
  while(MinQ1<0) MinQ1+=360;
  end
  while(MinQ2<0) MinQ2+=360;
  end
  while(MinQ3<0) MinQ3+=360;
  end
  while(maxQ1<0) maxQ1+=360;
  end
  while(maxQ2<0) maxQ2+=360;
  end
  while(maxQ3<0) maxQ3+=360;
  end
  if(MinQ1>maxQ1)
    maxQ1+=360;
    end
  if(MinQ2>maxQ2)
    maxQ2+=360;
    end
  if(MinQ3>maxQ3)
    maxQ3+=360;
    end
k=MinQ3:maxQ3;
for i=MinQ1:maxQ1
    for j=MinQ2:maxQ2
            plot(l1*cosd(i)+l2*cosd(i+j)+l3*cosd(i+j+k),l1*sind(i)+l2*sind(i+j)+l3*sind(i+j+k),'.y','markersize',10);
            hold on;
    end
end
end
