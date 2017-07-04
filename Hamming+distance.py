
# coding: utf-8

# In[2]:

#Hamming Distance is the number of transformation required to be done between sequence of same length.


# In[53]:

# Let us define a function to calculate hamming distance between two same length sequence

def hamming_dist(s1,s2):
    if len(s1) != len(s2):
        raise ValueError("Hamming distance is only defined for sequence of same length")
    else:
        return sum(el1 != el2 for el1, el2 in zip(s1,s2))


# In[58]:

s1 = 'Thsi is a sequence'
s2 = 'This is a sEQUENCE'


# In[60]:

hamming_dist(s1,s2)


# In[63]:

#Note : It also takes transformation in cases(Upper to Lower , Lower to Upper)

