# Hack Sprint Session 2 README

Slides: https://docs.google.com/presentation/d/1yhUUzHScKqshYYoC4rqx0tK1NNfxYVVE6zMS-6y2pNQ/edit?usp=sharing

## Table of Contents

- <a href="#1">Getting Started</a>
- <a href="#2">Setting Up the UI</a>
  - <a href="#3">Adding a Navigation Controller</a>
  - <a href="#4">Designing our Root View Controller</a>
  - <a href="#5">Designing the Navigation Bar</a>
  - <a href="#6">Attributes and Constraints for the Root View Controller</a>
  - <a href="#7">Adding a Second View Controller</a>
  - <a href="#8">Adding a Segue</a>
  - <a href="#9">Designing the Second View Controller</a>
  - <a href="#10">Attributes and Constraints for the Second View Controller</a>
- <a href="#11">Creating Classes for our View Controllers</a>
- <a href="#12">Linking our IB Objects to our Code</a>
- Coding in Swift
  - <a href="#13">Giving our Text Field a Border</a>
  - <a href="#14">Declaring the Properties we Need</a>
  - <a href="#15">Passing Data Between View Controllers</a>

## <a id="1">Getting Started</a>

1. Begin by creating a new project in Xcode.
2. Select "Create a new Xcode project" near the bottom left of the window.

![img](https://lh5.googleusercontent.com/Uv_0UW2wVlVMjLCC0YniMQTgR-SZEVgo27yXnlcWThcU2tvB9wDIeW4swW8Ky9C0LvOwxks0nwM3cjUWRoa_YxKu-Q1EsuSmeIRfAQqAhrJ5lln5IY9lE-8wdxwkNJAKNfHW5Y-v)

------

1. Ensure that the "iOS" tab at the top of the page is selected.
2. Double-click on "Single View App".

![img](https://lh5.googleusercontent.com/8K6MDiviiQGT4Zh34welL_CBntAvjlPDZAcGhEXWoswlfNNYY_Mxx1SPEqdgLpZF6wGVWqlUKfimvS_jXOlvPhSAmeHiZ4k76at4I3uYb_KM-TUFqRUNOE2hJvqPmcZXISCsqWaM)

------

1. Name your project "PrettyPost".
2. Pick whatever Team, Organization Name and Organization Identifier that you want.
3. Ensure that the Language field is set to "Swift".
4. Ensure that "Use Core Data" is unchecked.
5. Click "Next".
6. On the following window, select where you'd like your project's folder to be create (default location is ~/Desktop) and click "Create".

![img](https://lh5.googleusercontent.com/0LhI5jKG2WxVHKicqbBWnavePNkYdAja9X1a3YDN40B9MT691Q5wQQPzvyh5okaxyZZCfroSgesli3jTerNr2qMPbpBoVELuAI6ajD6EVy5f7ZCnndrCA-QqIKAI2h5QRL0ZDrIV)

---

## <a id="2">Setting Up the UI</a>

1. Use the **Project Navigator** on the left to select the **Main.storyboard** file and open the Interface Builder.

### <a id="3">Adding a Navigation Controller</a>

1. We're going to be using a **Navigation Controller**, which manages a [stack](https://www.cs.cmu.edu/~adamchik/15-121/lectures/Stacks%20and%20Queues/Stacks%20and%20Queues.html) of view controllers to provide a drill-down interface for hierarchical content. The Navigation Controller is responsible for "Header" views, and an example of one can be seen in the Messages app.
2. Locate the UI elements on the bottom right of the screen, ensuring that the third tab (circle with a square in it) is selected at the top of the pane.

<img src="https://lh4.googleusercontent.com/E4Wh-TLX0GiWIvA6XUnKKmELRdZLycU_t_4MGPLMBlL_-by3MDNbvLzwkj77U4BJ2mwWmNthqi0vNKjet1lahoN_dO4hIttvbHwAOiVrl4s3j-L3zkkXBG6d4je5p7vW-yRu2jTE" width="300px">

---

4. Drag a Navigation Controller into the Interface Builder.
5. Select and **delete** the "Root View Controller" that is attached to the newly created Navigation Controller by pressing the backspace/delete button.

<img src="https://lh5.googleusercontent.com/hg4gwSAALkh-yr38WDmRLOp_1zjOlkPBwoAvAxPLfTmNLfI7xuitpc7nAOZYznHe1DEJTdInwIMvGAjA7kVAI__laeBm8B2uyRmOUPgxcTUHwwAZ9E1jP0Gwnr1b8w2WdPAmHANi" width="500px">

---

6. Click on the arrow pointing to the View Controller (on the right in the above picture) and drag it to the Navigation Controller. This arrow tells Xcode what the "Initial View Controller", or the first screen seen by the user when the app launches, should be.

<img src="https://lh5.googleusercontent.com/I1igyExv511JP96vuok_cM1MgwjnOXbcaPnco98GJaqjcKbS-ZN-M8O33g5ExgiieUW5ojwt6UTzOzFsg2eAhLZreyz9eiuWtdfjNqsR-Ia2t-HXtuC4PXd7xp7JVP8t598HEEEW" width="500px">

---

7. **While holding down control** (not to be confused with cmd(⌘)), click anywhere on the Navigation Controller and drag and release on the View Controller.

<img src="https://lh5.googleusercontent.com/TIx1XJ4fovxcDH2UyAm14MqDv9m18FLzUYvIWa-GDANJcJvhTlP2PAxFVOymoYed6w3l5t60Q_ZM_Ho0nV0aZmIMDLVn4GpYA0xblr2R3Y3w6u6V-VE29_KGNZoupzqTBrHTVQpk" width="500px">

---

8. In the menu that appears, select "**root view controller**". The Root View Controller is the first View Controller that is shown by a Navigation Controller (in technical terms, it is the first first view stored in the Navigation Controller's stack of views). We must specify a View Controller as the Root View Controller, otherwise the Navigation Controller would have no content to display!
9. Notice how our View Controller now has a "header" navigation view at the top of it!

<img src="https://lh6.googleusercontent.com/X-Sz_YhCWrp6SOibLpgRf9A_6kuQjIfSeMS7bCUqETf7Utcw8NUMpDLuUbx7av0IUqYsfnIH7cTZ5jmNELw2k-P-UGx40PRFEyUvodolnuy14KW5k_NGsoaZnE-8nFE_m1HeHzfa" width="500px">

---

### <a id="4">Designing our Root View Controller</a>

1. We're going to add all of the UI elements we need for our initial View Controller, and give them constraints using Auto Layout.
2. In the bottom right of the screen, ensuring that the third tab is selected, scroll until you find the **Text Field** element.

<img src="https://lh6.googleusercontent.com/SpWrVTMMHFfPPjvqijEF04xMcKwL--2zYfQH7Q6mrrGDfv3GohfalZp6wowFwPzuc6isCjy8UxLkRbPvjdKwmKZc_wBO6inGuZjuG9X1ZdatOfK2PO_RPBvmG33M_-FLu6zTO4sX" width="300px">

---

3. Drag a text field into the View Controller, placing it at the top of the page.
4. Click the small square on the right border of the text field and drag it to the right to extend the text field.

<img src="https://lh4.googleusercontent.com/tmlj5BOI9if8le98agRK-4e48UoyXuiOKrOCCK7EaAkFQxV9JaCiKvYnK6qYbHvNjLvHLdDQnd9jKqs0g0xlRlCJjdXuY1pkYrLtYIlaz6GVXv3EY3ukr0MOuUpvUf2E9xX8qkrH" width="300px">

---

5. Returning to the bottom right of the screen, ensure that the third tab is selected and scroll until you find the **Text View** element.

<img src="https://lh3.googleusercontent.com/c7mdTh_z9M2UWQB0vrFbe6RqtdM4JhBMT0zzty5On51HG2JeBh_yF1Vt_Vck2HKpsmoPMBkEgV3z8WqHAA5qqkM4_VsHX1lh2Qn94AbWsIVr-9n6fmcTQN_HrtmIQ3rDIRUhgRMO" width="300px">

---

6. Drag a text view into the View Controller, placing it just beneath the Text Field we added earlier.
7. Using the small squares that appear on the border of the Text View, expand it until it looks similar to this photo:

<img src="https://lh3.googleusercontent.com/noIjzO23vm7BEkpOsafk_gK8Sbtr-uPr2mh1WrvofAdW6YFByaJ7CJT892ta5Xcqo3ZyjkuKc4cYuO2YP3y_VJ0wgMGIRQHU1SsSj6CfRqnvvHKYGZpUmNYTItlzkvN9R8f59fYy" width="300px">

---

### <a id="5">Designing the Navigation Bar</a>

1. We can also add UI elements to the Navigation Bar.
2. Returning to the bottom right of the screen, ensure that the third tab is selected and scroll up until you find the **Button** element.

<img src="https://lh5.googleusercontent.com/MfO6Y7KeyrjXVmY1G6CnSmrEdvMpuiqzrrZF0SSFCvgSAlr_DO3VpG39iHU0cOyEofFGQ0Oc1dRkN76FLLFYIFIsePmpJQCRQ1BIwX5_q5BZdAvCa-pkErSMQImQi6KoQZfyArEk" width="300px">

---

3. Drag a button into the **Navigation Bar** located at the top of our View Controller, and place it in the rightmost position:

<img src="https://lh4.googleusercontent.com/r8tFFptHF7pzD-UCjnM-ZdlWSBTbsPCbbSWtDYRjgX5hIRvNWCHPqJspZBYiwUh7-5CIfv3QL8w5-4KcbQXng87ddVJf6R7imB7FdhvoAh3nqja2xLMvSn2digkUIfaM21TrWgdZ" width="300px">

---

### <a id="6">Attributes and Constraints for the Root View Controller</a>

1. Select the Text Field (not the Text View!) we placed at the top of the View Controller.
2. On the right side of the screen, open the **Attributes Inspector** by clicking the tab to the left of the ruler icon:

<img src="https://lh5.googleusercontent.com/rOnzW7dAWMoW9MFhW3IAcRRFvNLoEPnMIHzOsKXAR3_ACEEHOOw6umaF7Qs3PxCZHi3mxyTAWKL0OBQhc2fqQ9LoEINNPqAhLg6SxJb5THoVIrAiYji6GkxhzaK3fpmpSMvMOE22" width="300px">

---

3. Locate the "Placeholder" field (just underneath the "Alignment" option), change the text to "Title", and press Enter.

<img src="https://lh3.googleusercontent.com/VAoe39kTUUfulGrct0LP1E6su0upc-5akyN3GThefUPT7_WQPWt617QdYX_J-xpGgpmZqU-Ws6jBt4eeA8L2zB2PwPl5hfaEIrFbsONaSgH3C3qi_cl8bNsBv4_WVfrfRCmaQtXf" width="300px">

---

4. With the Text Field still selected, click the "Add New Constraints" button near the bottom right of the screen.

<img src="https://lh3.googleusercontent.com/zcTZyGVl_fRa8CQElasmLImsIpL1TJrEI_-1QRX9pwXjfIWK9RpbOhkGrXTdgFVVDCE_U-YdYPEfIBIhYXUdJ-ZJX_9FGCsspNrJzPy7BaAtAayQtpaXRKBqfVqv85DWye4C6f9Z" width="400px">

---

5. Set all of the margings (top, bottom, left, right) to **25**. The red lines should now be solid rather than dashed.
6. Click "Add 4 Constraints".

<img src="https://lh4.googleusercontent.com/qh0vOw83j_BMJ4mamgwkl-wvDcqIQHoqsNhY9Y7Yf_v7YGyQGue0wLPGRDqQ_4X_zNhAPs8TxuJKX0GLWpHwlMgd9KUWivBBuR3WlKACJuICRWDKMfY0QZGes4fRcDCpeGJAP6aJ" width="300px">

---

7. Select the Text View we placed beneath the Text Field we were just editing.
8. On the right side of the screen, open the **Attributes Inspector** again by clicking the tab to the left of the ruler icon on the right side of the screen.
9. Change the "Text" field (second from the top) from "Lorem ipsum dolor etc." to "**Go ahead, type something...**" and press Enter.

<img src="https://lh3.googleusercontent.com/drPuqUfI9TG1U3ACmFsJ1cMmhg7acm2Zq3fKnq6JMAxgLkW8xZPYQ_YhsF-KLnZ6YxOQ8y714LA_S-peC8teKSllCDQXllwuFg7aY_GlTF5scW1830Oyib1j9gYd7ezEWSq6EtjZ" width="300px">

---

10. Notice how the Text View is outlined in red. This means that we have not set enough constraints such that the position of the Text Field is unambiguous. Let's set them now:
11. With the Text View selected, click the "Add New Constraints" button near the bottom right of the screen.
12. Set the left, right, and bottom margins to **25** (the top margin is already 25 to the Text Field). The red lines should now be solid rather than dashed.
13. Click "Add 3 Constraints".

<img src="https://lh5.googleusercontent.com/6He8SITWg2Xa9mQdFzBDZsYzqU2QXQzI7-tBaJmTN0mHSOX8ZqWp43EH0GKLXvK2w5laO3JZLyqA4E9zWYonDH-8MBJIUIJHr14-3iaGx94Zk2WHs4ju98qXVNVAICHjFLz_BqVf" width="300px">

---

14. Finally, **double-click** the Button that we added to the Navigation Bar.
15. Open the **Attributes Inspector** again by clicking the tab to the left of the ruler icon on the right side of the screen, and ensure the header at the top says "**Button**" 

<img src="https://lh3.googleusercontent.com/iVVgwQlo1-2cNvx7Kwj7OUGFarDkan1zoyIK9k_tIwoSSCI8gBYeBMRjQjhlr686ZiFkf5GxwQyFwsOWSse4oFmz__THb5UIyuewL4TPGYne_wZKDe4BZKPv3ajN6O6H2ZqdJVUo" width="500px">

---

16. Fortunately for us, we don't need to set any constraints for our Button: the Navigation Bar takes care of that for us!
17. However, we will change it's text. Locate the "Title" field (fourth from the top) and change the value from "Button" to "**Post**" then press Enter.

<img src="https://lh6.googleusercontent.com/Yrmoe5db7deQ9Z5LchOud5JtLICl67U_y6trC6fv3-CH0QMb6KWjpQaVMdtF_5DqzO6QFQkInN63VhsLCBb46N64EIx33F8FSn37opBFZ-Fjrnc6_gSMamXSPZPRrlgFNJy3Ptnm" width="300px">

---

18. Click on the Navigation Bar itself; you should see the following:

<img src="https://lh6.googleusercontent.com/0cgCo44KAc10lsTZjhGtBmuvfCHAY0pnoXWj8UW7Vn1oD-XiBRa_wczi0Rdsheu4mp_EQZfjOVLIha01gqKKtztZ0gLcirVBIuW2LX0DfgIClBLW2q4qR3LfAKLTNIZbkO0C4Qsi" width="600px">

---

19. Using the **Attributes Inspector** on the right side of the screen, set the "Title" field to "**New Post**" and press Enter.
20. Overall, your View Controller should now look like the following:

<img src="https://lh5.googleusercontent.com/bu1YY_v7gGavhqQjMfd8vhBYDm9t1jA6i2QpVhISSs6uc9quglBkho4lrOQpF8qPQXIyIR6Bho2XERnIbWoLMuhnxJN9iIxnskhl6Q60SE3cgE5wmzRt5-_RARYNxfrF8sugMHZR" width="300px">

That's it for our Root View Controller!

**Checkpoint**: Build your app and check out our design!

---

### <a id="7">Adding a Second View Controller</a>

1. Scroll to the very top of the pane in the bottom right corner of the screen, and ensure that the third tab is selected.
2. Click and drag another View Controller into the Interface Builder, to the right of the other two.

<img src="https://lh6.googleusercontent.com/5Kh7_FPmNYg1LXu5FfXCcc9HD4EoFAJ5us-TWWb6qlOlRAEmyKmHDBwcyNhPS1E_UeOPeyJhlnoBfh0-izmzMjx5zGbCuEd3UgI9wiR9m0Wm1-jE2fPOc2yuyDXtREtzgDwpyLas" width="600px">

---

### <a id="8">Adding a Segue</a>

1. We want to click the "Post" button in our first View Controller and have it **segue**, or transition to this second View Controller.
2. Select our Root View Controller (the one we just designed).
3. Click the "Post" button **twice** (not double-click) so you see the following:

<img src="https://lh3.googleusercontent.com/k4PKC5u9ZkI33LVSsxgzvGCVRHQ2LnOvqvKhmsDse1VGbYz2GQ74aOpoQWNNffd2c4z60gsqiIUARTOvohsSysgIpSQ43_q3qCmiUWCE9rgONxiXDfD0N-dHuSvSAvK6DNt9YUzG" width="300px">

---

4. **While holding control**, click on the "Post" button and drag into our second View Controller.

<img src="https://lh4.googleusercontent.com/npZ51QItjB8jLPXryX7wZtdV1K9Le3gD7URIAS7rcyNSqOkzWFLE86ERbj811cXyLAH0T0gpVAJadjHkEz7HA8-1ZWcOA3pbm7Yxdjr7NLOWomRLSUkAV_aIaXtr5jVyCymazBYp" width="400px">

---

5. In the menu that appears, select **Show**.
6. Notice how a Navigation Bar has been automatically added to our second View Controller!

**Checkpoint**: Build and run your app to see the segue occur!

---

### <a id="9">Designing the Second View Controller</a>

1. Returning to the bottom right of the screen, ensure that the third tab is selected and scroll until you find the **Image View** element.

<img src="https://lh6.googleusercontent.com/9GHruM9Te-5oK_w2leicRjcB1fZzvtHgiphdW1kKGU5r3OzsBm623ABSBR3I63VKjHHnD3fmhLy6TxHsH7XMJShBKkRoeDhqL7F-dlp2VwL3RhZkicUlS7se_7T6evEXz0HMh9Mg" width="300px">

---

2. Drag an Image View into the second View Controller and use the small white squares that appear on its border to expand it so that it covers the entire View Controller (except the Navigation Bar, of course):

<img src="https://lh3.googleusercontent.com/wELngCqbjeHSyd7LZ3X5NUdN_GkVAHa1m4lkolxaOxb1XKs4UsPmX_TXf79khYDj-ZTPfBUVnBkcwq-CZ0_TdwGyImkOw-s-MK2TR46UL32ZgkByNAC2MI8CJw_olJOdex2AyJyK" width="300px">

---

3. Using the **Project Navigator** on the left side of Xcode, select the Assets.xcassets folder.
4. In the left pane (the one containing the "AppIcon" entry), right click and select "New Image Set".

<img src="https://lh5.googleusercontent.com/DQrtj9A4TASOFjalJ20X9AfGHHTYWmHvtk7Mq-k3F32al1d4IHGbUJqI2gBMrOurNo__0E4S09R_B5hCtAqOJEmXYg1RqIrpPgD7Qjg6KJGKWMcm0EWgW1wq2ttXK6V0aiRcA9I3" width="400px">

---

5. Single click our newly created **Image** and rename it to **NatureBG**.

<img src="https://lh5.googleusercontent.com/I794w-wr-34-eBNydFjhb67u8dtBD-j54FahJO0UplkXxMHelm2BvUZglKAQ1TteBX1svHEi_BMe_Ztp-4mm3SeNNZ03vp0PwdrydzmzVJbn1Zx5QjC6hT7gVfRwPF8ZC9jZqbTg" width="200px">

---

6. Visit [this link](https://imgur.com/a/xERzU) and download the photo.
7. From Finder/your Downloads, drag the downloaded photo into the slot in **NatureBG** labeled **1x**.

<img src="https://lh5.googleusercontent.com/OUXqmCv_LGi2MOoeEo8iwxPg8-MKT4W4teZ54xvRBQyq9a_E8AtAG1F8o_hf1POnPj_VHDRGp4q0vuLgBkk83a8SR4dSElfvw9AaKnmdLPHJa6lKk6QdnYXyV7Tvkdh7jwzrhhij" width="400px">

---

8. Using the **Project Navigator** on the left side of Xcode, return to the Interface Builder by selecting **Main.storyboard**.
9. In the pane on the bottom right of Xcode, ensuring the third tab is selected scroll to the very bottom so that you see the **View** element.

<img src="https://lh4.googleusercontent.com/C1zx9wvfZ40pWtScFgmUqTdAo6odsqhkdbhlbO376iuiNX7rcyXA2kC5TSz7RSxfaHHQl9Qc9pc-Cp084PyjmbzH0zkIQexPj3jCCbe0V8Ifbfb4DlSzweIDulRRd_uGzme4rJFb" width="300px">

---

10. Drag a View into our second View Controller and use the small squares that appear on its border to size it until it looks like the following image:

<img src="https://lh3.googleusercontent.com/7idECP2FZ0cyBvRCfGPp50jkrC5C9v2ecgudTKCRaq9pl3w8v6tuDLylDz0sWjv9ZRKFkhiv4VA8s8M1K8M5L3F8--UqSMY7v2UNmCwpBWPmY2uSVNDy-3JWuLPm3lyZQiZF5pcU" width="300px">

---

11. Finally, return to the pane containing the UI elements and scroll up until you see the **Label** element.

<img src="https://lh4.googleusercontent.com/yugm7PZzv1DVdcc1UETmB9C3DOJywuhh3LDDVkO10p8eqV_I9muU-FCLmKx3PekYDOwPE5EzxAfUM8DDId5iPhvOChZCtMSjIPvBDxJu9kNvBqrJ54JjJCBR15hgaPVloxtKq9RI" width="300px">

---

12. Drag a Label into our second View Controller and place it at the top of the View we just dragged in.
13. In the pane on the bottom right of Xcode, ensuring the third tab is selected, scroll until you find the **Text View** (not Text Field!) element again.
14. Drag a Text Field into our second View Controller and place it underneath the Label.

<img src="https://lh5.googleusercontent.com/mFWnFHC_ANs7M5B4uXisGJBh_ZaQc5Iz5D7XK8DZlIb4r62amaK3asqiDBq5vh1OV6l__P-ERk-fhg21MZqjXqCmx4YDptOEKn1_r0H-30i9dAZgKsMrd_d3xTeCjyjZ-CB-UuAU" width="300px">

---

### <a id="10">Attributes and Constraints for the Second View Controller</a>

1. Select the Image View that's currently at the very back of the second View Controller.
2. On the right side of the screen, open the **Attributes Inspector** by clicking the tab to the left of the ruler icon.
3. Locate the "Image" field (at the very top) and use the drop-down menu to change the image to **NatureBG**.

<img src="https://lh5.googleusercontent.com/l2dSW3xaTCYuVcog8I21K8nBh5mRvOZKKFes5xu1fEUpa1tdWCO9CK9TOtcb9r47z31Zt5rP2g4rhsp_k16hE_5Nf-8oyfHwZOBKaqCP3zGy59Ihj2nG1RtLFLiFhQaruXBrFMLf" width="300px">

---

4. With the Image View still selected, click the "Add New Constraints" button near the bottom right of the screen.
5. Set all of the margins (top, bottom, left, right) to **0**. The red lines should now be solid rather than dashed.
6. Click "Add 4 Constraints".

<img src="https://lh5.googleusercontent.com/Nr1gYUAOcuHVVbI4KsTbowieRvTmzi8ZUcRdO6cO9Uh8RCzL-zVA2ESeQOruXiWgc4wk3FegqX8J082Pi9EUnjYx5j-XXCu8kmeNP4-GABvjd6wC8oQNQn0jyV91CALShZANq4O_" width="300px">

---

5. Click the View that contains the two Labels (the white rectangle in the middle of the Image View).
6. On the right side of the screen, open the **Attributes Inspector** by clicking the tab to the left of the ruler icon.
7. Locate the "Background" field (underneath the "Alpha" field) and click it.
8. In the menu that appears, select "Other" which is located at the bottom of the menu.
9. In the menu that appears, ensure the Color Wheel tab is selected.
10. Using the sliders, change the color to **black** and the opacity to **50%**.

<img src="https://lh6.googleusercontent.com/HCqJQwo24STb1ls97HIrseNrlbSdneS3wRqU0WCGW7504SI82Pd2Cf0lYM9TCzLVeNf-7ZSyB2h-IjcpxEd3ontw5dt_g_eWEKv_frAg_NlFkQxXLUXQyBlVoh72mKei0gCijDHq" width="300px">

---

11. Close the Colors menu.
12. With the View still selected, click the "Add New Constraints" button near the bottom right of the screen.
13. Set all of the margins (top, bottom, left, right) to **20**. The red lines should now be solid instead of dashed.
14. Click "Add 4 Constraints".

<img src="https://lh6.googleusercontent.com/Cr49vSlfYpiNHG2LrToxwOwyz_YQ8t8D7PRHZmUGMjznCO84IOYAe2Ji1AQBszzgtX2hrpuya20k_62HGZH0PkkyqPtHfv3vDYgtD-rUYVpxC0eF8Vhbi0tJFcfwluzh39GV2Lzu" width="300px">

---

15. Select the topmost Label in the View Controller.
16. On the right side of the screen, open the **Attributes Inspector** by clicking the tab to the left of the ruler icon.
17. Locate the **Color** field (third from the top) and use the drop-down menu to select **White Color**.
18. Just underneath the "Color" field, find the **Font** field and use the up/down arrows to the right of it to change the font size to **30.0**.
19. Just underneath the "Font" field, change the **Alignment** to be centered.
20. Just underneath the "Alignment" field, change the **Lines** to 2.

<img src="https://lh6.googleusercontent.com/Ly9CWSzvjpoefdfZPxQpNDvqEM6Wxl5hgUeoKvWjXrE3jzVUTp6pMoWX-3cuYR-kZIG2E6dvCtxECWAwChvLK-L1Bk8nLYofXaPipBh3xUQih2QelKeEDE39uKtkx7hPKmLDHSD3" width="300px">

---

20. With the topmost label still selected, click the "Add New Constraints" button near the bottom right of the screen.
21. Set all of the margins (top, right, left, bottom) to **20**. The red lines should now be solid instead of dashed.
22. Click "Add 4 Constraints".

<img src="https://lh4.googleusercontent.com/uaN7ubH08mfr7vp4FnVpikQ7F_4ZwZUTQME_LAaDBkFpXyJa_m_FWN3LSCzQQ1UfA6omMm0UYbYe2SH78ocmFRdVDuiTH-aoGy__0C9tuOezSTJSUlzKq7UVKueinPDAv8hFs0VS" width="300px">

---

23. Finally, select the Text Field.
24. On the right side of the screen, open the **Attributes Inspector** by clicking the tab to the left of the ruler icon.
25. Locate the **Color** field (third from the top) and use the drop-down menu to select **White Color**.
26. Just underneath the "Font" field, change the **Alignment** to be centered.
27. Just underneath the "Alignment" field, uncheck **both** the "Editable" and "Selectable" buttons.

<img src="https://lh6.googleusercontent.com/7vdLfroPe6_8X6IrMiqadghx8_cOj5cqjAse5DXX_PU2xnevpSyl4M233LYbB7nA5YICf5peDOOcDiJjlCL7FcSU1hjcF9nieJbsRZXFb8Bx5KFEEOMg4zAFRn7uBtV01Rj9XjxF" width="300px">

---

28. Scroll down further until you see the "Background" field (between the "Alpha" and "Tint" fields).
29. Using the drop-down menu, change the **Background** to "Clear Color".

<img src="https://lh5.googleusercontent.com/sDFtZGSGsqLuVAhgqGclkFB75wGk-JSB6_sTmiFgBeUocpnJDhf4FO1z_dvW9bBvSPciBVcbPCOC41q2oZNau6ybYdVa197rEOA_3aH1ND9taKWSgiH_aWAsNFbPKILVaUfQTzvk" width="300px">

---

28. With the Text View still selected, click the "Add New Constraints" button near the bottom right of the screen.
29. Set the left, right, and bottom margins to **20** (the top margin is already 20 to the label).
30. Click "Add 3 Constraints". Overall, your second View Controller should look like the following:

<img src="https://lh4.googleusercontent.com/s8v3bcRc-iB3stN3OvbUX4PNEV8e0he09_62Haq9CTzVyFxaCyEmdpomMDwnsAo6jrilZBfYKdvvH7Qq-75wBAvJQdJiLHfoHCgFumRcXmMtKCbUd_nPPaEZpKTbs8zXmvmXsXn5" width="400px">

**Checkpoint**: Build your app and run it to see everything we've done!

---

## <a id="11">Creating Classes for our View Controllers</a>

1. Using the **Project Navigator** on the left side of Xcode, select the **ViewController.swift** file.
2. Change the class name from "ViewController" to "**CreatePostViewController**".

```
class CreatePostViewController: UIViewController {
	...
}
```

3. Using the Project Navigator, click on the ViewController.swift file and rename it to **CreatePostViewController.swift**.

<img src="https://lh5.googleusercontent.com/AzKfi2byxj40tC2fbfxW4gkj4H_5GUieU7rD9AZ_FIv6R06k5pYVKsQ7l607H6DcIEQS8DGkT5gB-C5LCtDAzYiYqtWnfRO1zIILOR3lJ_kbYd41EEzuq_3YJ6c0TZqNs0MbGo04" width="300px">

---

4. Now, at the top of your screen click **File** > **New** > **File**.
5. In the menu that appears, double-click "**Cocoa Touch Class**".
6. In the menu that appears, change the "Class" field to "**ReadPostViewController**".
7. Use the drop-down menu in the "Subclass of" field to select "**UIViewController**".
8. Ensure that language is set to "Swift".
9. Click Next.

<img src="https://lh6.googleusercontent.com/r6sxxJ5OP0wRg075CsBxT8rTDg5D86FZP5DnBfyhA2He99LfUuprZq_gD_5tCQVMWcesOo7dGiWVkRkKfYWUnRlQBHC62W5buQCFWZNbaB3Lcuy6ecUDkd9pP_rkp0s0ZxnyZUKT">

---

10. Click "Create".
11. Return via the **Project Navigator** to the Interface Builder by selecting **Main.storyboard**.
12. Select the Root View Controller ("the one with the "New Post" header).
13. Click the tab to the left of the Attributes Inspector.
14. Using the drop-down menu, set the "Class" field (first one) to **CreatePostViewController**.

<img src="https://lh5.googleusercontent.com/wBnBUJebQlH-Wmclf4XvG97kusoxln1WD0En1OvFv9aiAJf0iExNllE5lkZnSCaxKS7stA2MyvMzbSXCiWQVGJKLerBqRx4mCLVqselQN8fswHmGn3LSs2C54ZLHRR06lNtXjMm5" width="500px">

---

15. Select the second View Controller (i.e. the other one that we designed).
16. Click the tab to the left of the Attributes Inspector.
17. Using the drop-down menu, set the "Class" field (first one) to **ReadPostViewController**.

<img src="https://lh5.googleusercontent.com/I1U4tLU5ZJl0WCEUxS-VIEjbU4L2Xgp20ikjpSnG2-s77n3AJpOF6uwhVRuLuMElcKGQJBXPRPwTdS0UmZgEF1NXDoyqksHaJ12JmOFey7DUM-eJUgp9RDmz9tuQ1TxYpQY8lcl3" width="500px">

---

## <a id="12">Linking our IB Objects to our Code</a>

1. Reselect CreatePostViewController (the root view controller).
2. Click on the two overlapping circles near the top right of Xcode to open the **Assistant Editor**.
3. If it is difficult to see our View Controller, close the left pane if necessary by clicking on the button (square with black rectangle on the left side) to the left of "View as iPhone..." in the bottom left of the window.
4. **While holding down control**, click on the Text Field at the top of the View Controller and drag to the space directly **above** the `viewDidLoad()` function.
5. In the window that appears, **ensure that the "Type" field says UITextField, else press "Cancel" and try again.**
6. Set the "Name" field to **titleTextField**.
7. Click "Connect".

<img src="https://lh4.googleusercontent.com/EbD23QXJDzIt2qB0T8f1dy2qvNng3RG3POJxd8J4cxDvW4ytj835tLSM9EqVHbrn7oc8h_tpObQpQdTJwuJn02A0w5AFc3Q0SM_V9Qwo2OcUjCYEKtK17lrnIb7S9rsrxQZrHsKW" width="400px">

---

8. While holding down control, click on the Text View beneath the Text Field we just connected and drag to the space directly **below** the titleTextField line we just made.
9. In the window that appears, **ensure that the "Type" field says UITextView, else press "Cancel" and try again.**
10. Set the "Name" field to **postTextView**.
11. Click "Connect". You should now see the following:

<img src="https://lh3.googleusercontent.com/_C6RE67hQBucHLTvSzs8z8mtthzEkdgbh-oPSth6D0s3I-0YVhBYpoiisfYWdOynbPb4N2d3N7Qy6ioBsfVIndLxhtc6reFt2COJdBkMoBGqOpxFzgb5VZ72y39Xs9JjRhi99F2-" width="300px">

---

12. With the Assistant Editor still open, select the **ReadPostViewController** in the Interface Builder.
13. You should see the file shown by the Assistant Editor switch to ReadPostViewController.swift.
14. Reopen the left pane by clicking on the button (square with black rectangle on the left side) to the left of "View as iPhone..." in the bottom left of the window.

<img src="https://lh3.googleusercontent.com/akA6KzlWGnc9jZ_x7WLnZlW5DDcUfoh3cpVK1TNt9Sp2X4kUEZE-o_6Uj5cmHrbVrkwGCbun_VvgRNGjotAjVq9opug_Zd8q1cMEHUe7NFqmWJlm8MG5f5B50vjHENIifXkWTLT1" width="500px">

---

15. We can also use this pane to connect our Interface Builder objects to our code. It's sometimes easier to use when there are many objects on our View Controller which are difficult to click individually.
16. While holding down control, click on the "Label" cell in the "Read Post View Controller Scene" (underneath the "View" cell)  and drag to the space directly directly **above** the `viewDidLoad()` function.
17. In the window that appears, **ensure that the "Type" field says UILabel, else press "Cancel" and try again.**
18. Set the "Name" field to **titleLabel**.
19. Click "Connect".

<img src="https://lh6.googleusercontent.com/tBBIrryaY1ZXJex6T2_JVhWeVNAjfaXV-8g0t09E-h5olk_0OIoB7KjKGiJrF_wq2ARvSgyK72HnRwGPk5zpHqeZ4H0dmNHZb_4amM8XY1JfL1GAQOfsPRfPvMXCHZVhw1SHwgif" width="300px">

---

20. While holding down control, click on the "Text View" cell in the "Read Post View Controller Scene" (underneath the "Label" cell) and drag to the space directly **below** the titleLabel line we just made.
21. In the window that appears, **ensure that the "Type" field says UITextView, else press "Cancel" and try again.**
22. Set the "Name" field to **contentsTextField**.
23. Click "Connect". You should see the following:

<img src="https://lh4.googleusercontent.com/geQTsPQXOOAR7EQngvEbIctEbP46eIP1BTw4i6j8fcVnRZe_okARQSCkrxkrzYoOVLjcFMcQH_tC5ND1-jSRehE3-v5TCihSvUgIji_hs2wehhKcbEFhfEMcqHE-EanaQMRpk2hf" width="400px">

---

## Coding in Swift

### <a id="13">Giving our Text Field a Border</a>

1. Close the Assistant Editor by clicking on the "X" on the top right of the pane with our code in it.

<img src="https://lh4.googleusercontent.com/A-RVsXCWjLw7CCSyVnILjcA6unhMfWogMvawakNxymxEXA4XAsPmde8Efr-ql0YH5ypolsSQnb5uTRwzmfKu5a6CUjLadufzZVf8lOHZjQW_dnrlEThuQOdSILP7Ng-Fk0aeGQ19" width="300px">

---

2. Using the Project Navigator, select the **CreatePostViewController.swift** file.
3. Change `viewDidLoad()` to the following:


```
override func viewDidLoad() {
	super.viewDidLoad()
	// Do any additional setup after loading the view, typically from a nib.
        
	postTextView.layer.borderWidth = 1.0
	postTextView.layer.borderColor = UIColor.lightGray.cgColor
	postTextView.layer.cornerRadius = 5.0
}
```

**Checkpoint**: Build and run your app to see the border!

### <a id="14">Declaring the Properties we Need</a>

1. Using the Project Navigator, select the **ReadPostViewController.swift** file.
2. Above all of the IBOutlet statements, but still within the (`class ReadPostViewController` block), add the following code:

```
var postTitle: String!
var postContents: String!
```

3. Change `viewDidLoad()` to the following:

```
override func viewDidLoad() {
	super.viewDidLoad()
        
	titleLabel.text = postTitle
	contentsTextField.text = postContents
}
```

### <a id="15">Passing Data Between View Controllers</a>

1. Using the Project Navigator, select the **CreatePostViewController.swift** file.
2. Add the following function above `viewDidLoad()`:

```
override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
	super.prepare(for: segue, sender: sender)
        
	if let destination = segue.destination as? ReadPostViewController {
		destination.postTitle = titleTextField.text
        destination.postContents = postTextView.text
	}
}
```

**Checkpoint**: Build and run your app. Congratulations, you've created your first multi-view application!
