.class public Lcwn;
.super Lcwm;
.source "PG"


# static fields
.field public static b:Lcwn;


# instance fields
.field public final c:Ljava/text/BreakIterator;


# direct methods
.method public constructor <init>(Ljava/util/Locale;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    invoke-direct {p0}, Lcwm;-><init>()V

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1
    iput-object p1, p0, Lcwn;->c:Ljava/text/BreakIterator;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-static {p1}, Ljava/text/BreakIterator;->getCharacterInstance(Ljava/util/Locale;)Ljava/text/BreakIterator;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final c(I)[I
    .locals 4

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-object p0

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_2
    if-eq p1, v3, :cond_0

    nop

    goto/32 :goto_20

    nop

    nop

    :cond_0
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_3
    goto :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto :goto_1

    nop

    nop

    :goto_6
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const v1, 0x6

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iget-object v0, p0, Lcwn;->c:Ljava/text/BreakIterator;

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_9
    const v0, 0x1e

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_a
    const/4 v3, -0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_b
    move-object v0, v1

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_d
    const-string v2, "impl"

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_e
    return-object v1

    nop

    nop

    :goto_f
    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_11
    move-object v0, v1

    nop

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_26

    nop

    nop

    nop

    :goto_13
    invoke-static {v2}, Luch;->b(Ljava/lang/String;)V

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_14
    if-ltz p1, :cond_1

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_15
    iget-object v0, p0, Lcwn;->c:Ljava/text/BreakIterator;

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_16
    move-object v0, v1

    nop

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_18
    if-lez v0, :cond_2

    nop

    goto/32 :goto_2a

    nop

    nop

    :cond_2
    goto/32 :goto_29

    nop

    :goto_19
    if-eqz v0, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :cond_3
    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_1a
    if-eqz v0, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :cond_4
    goto/32 :goto_27

    nop

    nop

    :goto_1b
    invoke-static {v2}, Luch;->b(Ljava/lang/String;)V

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_1c
    if-lt p1, v0, :cond_5

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_14

    nop

    nop

    nop

    :goto_1d
    if-eqz v0, :cond_6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :cond_6
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-virtual {p0}, Lcwm;->a()Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_1f
    const/4 p1, 0x0

    nop

    nop

    :goto_20
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_21
    if-ne v0, v3, :cond_7

    nop

    goto/32 :goto_1

    nop

    :cond_7
    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_22
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    invoke-virtual {v0, p1}, Ljava/text/BreakIterator;->following(I)I

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_24
    if-lez v0, :cond_8

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_25
    invoke-virtual {v0, p1}, Ljava/text/BreakIterator;->isBoundary(I)Z

    move-result v0

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_26
    invoke-virtual {v0, p1}, Ljava/text/BreakIterator;->following(I)I

    move-result p1

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_27
    invoke-static {v2}, Luch;->b(Ljava/lang/String;)V

    goto/32 :goto_b

    nop

    nop

    :goto_28
    rem-int v0, v0, v1

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_29
    goto/32 :goto_f

    nop

    nop

    nop

    :goto_2a
    goto/32 :goto_1e

    nop

    nop

    :goto_2b
    if-eqz v0, :cond_9

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_2c
    const/4 v1, 0x0

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_2d
    goto/32 :goto_2a

    nop

    nop

    :goto_2e
    invoke-virtual {p0, p1, v0}, Lcwm;->b(II)[I

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_2f
    iget-object v0, p0, Lcwn;->c:Ljava/text/BreakIterator;

    nop

    goto/32 :goto_2b

    nop

    nop

    nop
.end method

.method public final d(I)[I
    .locals 4

    goto/32 :goto_19

    nop

    nop

    :goto_0
    iget-object v0, p0, Lcwn;->c:Ljava/text/BreakIterator;

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_1
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_2
    const/4 v1, 0x0

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    if-ne v0, v3, :cond_0

    nop

    goto/32 :goto_23

    nop

    :cond_0
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_4
    if-eq p1, v3, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    :cond_1
    goto/32 :goto_26

    nop

    nop

    :goto_5
    if-eqz v0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_1a

    nop

    nop

    :goto_6
    invoke-virtual {v0, p1}, Ljava/text/BreakIterator;->isBoundary(I)Z

    move-result v0

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_8
    if-eqz v0, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_9
    if-gt p1, v0, :cond_4

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_a
    if-lez v0, :cond_5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-virtual {v0, p1}, Ljava/text/BreakIterator;->preceding(I)I

    move-result p1

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_29

    nop

    :goto_d
    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_e
    if-lez v0, :cond_6

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :cond_6
    goto/32 :goto_c

    nop

    :goto_f
    invoke-static {v2}, Luch;->b(Ljava/lang/String;)V

    goto/32 :goto_17

    nop

    nop

    :goto_10
    if-gtz p1, :cond_7

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    :cond_7
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-virtual {p0, v0, p1}, Lcwm;->b(II)[I

    move-result-object p0

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_12
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_13
    move-object v0, v1

    nop

    nop

    :goto_14
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_15
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_16
    const/4 v3, -0x1

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_17
    move-object v0, v1

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_19
    const v0, 0x6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-static {v2}, Luch;->b(Ljava/lang/String;)V

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    move-object v0, v1

    nop

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_1d
    if-eqz v0, :cond_8

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_0

    nop

    nop

    :goto_1e
    invoke-virtual {p0}, Lcwm;->a()Ljava/lang/String;

    move-result-object v0

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_1f
    move p1, v0

    nop

    nop

    nop

    nop

    :goto_20
    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_21
    if-eqz v0, :cond_9

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_23
    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_24
    const-string v2, "impl"

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_25
    invoke-static {v2}, Luch;->b(Ljava/lang/String;)V

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_26
    goto :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_27
    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_28
    return-object v1

    nop

    nop

    nop

    :goto_29
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    iget-object v0, p0, Lcwn;->c:Ljava/text/BreakIterator;

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_2b
    const v1, 0x17

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_2c
    goto :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    goto/32 :goto_10

    nop

    nop

    :goto_2e
    iget-object v0, p0, Lcwn;->c:Ljava/text/BreakIterator;

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    invoke-virtual {v0, p1}, Ljava/text/BreakIterator;->preceding(I)I

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop
.end method
