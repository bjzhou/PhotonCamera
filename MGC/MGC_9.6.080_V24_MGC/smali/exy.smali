.class public final Lexy;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:Ljava/util/TimeZone;

.field public h:I


# direct methods
.method public constructor <init>()V
    .locals 1

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_0
    iput v0, p0, Lexy;->a:I

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_1
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop

    :goto_3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_4
    const-string v0, "UTC"

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iput v0, p0, Lexy;->c:I

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iput v0, p0, Lexy;->d:I

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_7
    iput v0, p0, Lexy;->f:I

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_8
    iput v0, p0, Lexy;->b:I

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_9
    invoke-static {v0}, Lj$/util/DesugarTimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_a
    iput-object v0, p0, Lexy;->g:Ljava/util/TimeZone;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_b
    iput v0, p0, Lexy;->e:I

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Ljava/util/Calendar;)V
    .locals 5

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object p1

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    :goto_1
    const-wide/high16 v3, -0x8000000000000000L

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iput v0, p0, Lexy;->c:I

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_3
    const v0, 0xf4240

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_4
    iput-object v0, p0, Lexy;->g:Ljava/util/TimeZone;

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_5
    const-string v0, "UTC"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_6
    iput v0, p0, Lexy;->d:I

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    :goto_7
    invoke-virtual {v1}, Ljava/util/GregorianCalendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_8
    iput p1, p0, Lexy;->c:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_9
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    :goto_a
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const/16 p1, 0xc

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_c
    mul-int/2addr p1, v0

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_d
    iput p1, p0, Lexy;->e:I

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    :goto_e
    const/4 p1, 0x1

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_f
    iput p1, p0, Lexy;->h:I

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_10
    invoke-virtual {v1, p1}, Ljava/util/GregorianCalendar;->get(I)I

    move-result p1

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    const/4 v0, 0x2

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    iput v0, p0, Lexy;->a:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    iput v0, p0, Lexy;->f:I

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_15
    iput-object p1, p0, Lexy;->g:Ljava/util/TimeZone;

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_16
    const v0, 0x3

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_17
    iput p1, p0, Lexy;->d:I

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_18
    const/4 p1, 0x5

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_19
    const v1, 0xf

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-virtual {v1, p1}, Ljava/util/GregorianCalendar;->setTimeZone(Ljava/util/TimeZone;)V

    goto/32 :goto_2b

    nop

    nop

    :goto_1b
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_1c
    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    return-void

    nop

    nop

    :goto_1e
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_20
    invoke-virtual {v1, p1}, Ljava/util/GregorianCalendar;->get(I)I

    move-result p1

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_21
    invoke-virtual {v1, p1}, Ljava/util/GregorianCalendar;->get(I)I

    move-result p1

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_22
    invoke-virtual {v1, v2}, Ljava/util/GregorianCalendar;->setGregorianChange(Ljava/util/Date;)V

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_23
    add-int/2addr v0, p1

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_24
    iput v0, p0, Lexy;->b:I

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_25
    invoke-virtual {v1, p1}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    :goto_26
    const/16 p1, 0xe

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_27
    add-int v0, v0, v1

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_28
    goto/32 :goto_1e

    nop

    nop

    :goto_29
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    if-lez v0, :cond_0

    nop

    goto/32 :goto_29

    nop

    :cond_0
    goto/32 :goto_28

    nop

    :goto_2b
    invoke-virtual {v1, v0}, Ljava/util/GregorianCalendar;->setTime(Ljava/util/Date;)V

    goto/32 :goto_e

    nop

    nop

    :goto_2c
    iput p1, p0, Lexy;->f:I

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    const/16 p1, 0xb

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    invoke-static {v0}, Lj$/util/DesugarTimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    check-cast v1, Ljava/util/GregorianCalendar;

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_30
    invoke-static {v1}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_31
    new-instance v2, Ljava/util/Date;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_32
    invoke-virtual {v1, p1}, Ljava/util/GregorianCalendar;->get(I)I

    move-result p1

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_33
    invoke-virtual {v1, v0}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_34
    iput v0, p0, Lexy;->a:I

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_35
    const/16 p1, 0xd

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    :goto_36
    iput v0, p0, Lexy;->e:I

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_37
    invoke-virtual {v1, p1}, Ljava/util/GregorianCalendar;->get(I)I

    move-result p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_38
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_39
    iput v0, p0, Lexy;->b:I

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop
.end method

.method public constructor <init>(Ljava/util/Date;Ljava/util/TimeZone;)V
    .locals 2

    goto/32 :goto_30

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v0, p1}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v1

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_1
    iput v1, p0, Lexy;->b:I

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_2
    invoke-static {v0}, Lj$/util/DesugarTimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    new-instance v0, Ljava/util/GregorianCalendar;

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_4
    const/16 p1, 0xd

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_5
    invoke-virtual {v0, p1}, Ljava/util/GregorianCalendar;->get(I)I

    move-result p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_6
    iput p1, p0, Lexy;->f:I

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iput v0, p0, Lexy;->d:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {v0, p1}, Ljava/util/GregorianCalendar;->get(I)I

    move-result p1

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_9
    invoke-virtual {v0, p1}, Ljava/util/GregorianCalendar;->setTime(Ljava/util/Date;)V

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_a
    iput-object p2, p0, Lexy;->g:Ljava/util/TimeZone;

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    iput v0, p0, Lexy;->b:I

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_c
    iput v0, p0, Lexy;->c:I

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_d
    rem-int v0, v0, v1

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_e
    const/4 v0, 0x0

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_f
    const/16 p1, 0xe

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_10
    iput v0, p0, Lexy;->e:I

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    iput p1, p0, Lexy;->h:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_2e

    nop

    :goto_14
    const/16 p1, 0xc

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_15
    invoke-virtual {v0, p1}, Ljava/util/GregorianCalendar;->get(I)I

    move-result p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_16
    iput v0, p0, Lexy;->a:I

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_17
    invoke-direct {v0, p2}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_18
    mul-int/2addr p1, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_19
    iput p1, p0, Lexy;->e:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_1a
    const/4 p1, 0x1

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    const v1, 0x17

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-virtual {v0, p1}, Ljava/util/GregorianCalendar;->get(I)I

    move-result p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_2d

    nop

    :goto_1e
    iput-object v0, p0, Lexy;->g:Ljava/util/TimeZone;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_1f
    iput p1, p0, Lexy;->c:I

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    const v0, 0xf4240

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_21
    const/4 v1, 0x2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_22
    iput p1, p0, Lexy;->d:I

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_23
    iput v0, p0, Lexy;->f:I

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    return-void

    nop

    :goto_25
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_26
    iput v1, p0, Lexy;->a:I

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_27
    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_28
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29
    const/16 p1, 0xb

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_2a
    const/4 p1, 0x5

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    const-string v0, "UTC"

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    invoke-virtual {v0, p1}, Ljava/util/GregorianCalendar;->get(I)I

    move-result p1

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_2d
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_2f
    add-int/2addr v1, p1

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_30
    const v0, 0x4

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a()Ljava/util/Calendar;
    .locals 4

    goto/32 :goto_1d

    nop

    nop

    :goto_0
    const/16 v1, 0xe

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_1
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_2
    const/16 v1, 0xb

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_3
    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->set(II)V

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->setGregorianChange(Ljava/util/Date;)V

    goto/32 :goto_13

    nop

    nop

    :goto_5
    const v1, 0xf4240

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iget v1, p0, Lexy;->b:I

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_7
    iget v2, p0, Lexy;->f:I

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_8
    const-wide/high16 v2, -0x8000000000000000L

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_9
    iget v2, p0, Lexy;->e:I

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_a
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_b
    div-int/2addr p0, v1

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const v1, 0x16

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_d
    const/16 v1, 0xd

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_e
    const/4 v1, 0x5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_f
    const/16 v1, 0xc

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_10
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_17

    nop

    :goto_11
    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->set(II)V

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    const/4 v1, 0x1

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_13
    iget-object v1, p0, Lexy;->g:Ljava/util/TimeZone;

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_14
    iget v2, p0, Lexy;->c:I

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_15
    add-int/lit8 v1, v1, -0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_16
    iget v2, p0, Lexy;->d:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_20

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_a

    nop

    nop

    :goto_19
    iget p0, p0, Lexy;->h:I

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_1a
    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-virtual {v0, v1, p0}, Ljava/util/GregorianCalendar;->set(II)V

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_1c
    rem-int v0, v0, v1

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    const v0, 0x3

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_1e
    iget v2, p0, Lexy;->a:I

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_1f
    return-object v0

    nop

    nop

    nop

    nop

    :goto_20
    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_21
    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    goto/32 :goto_4

    nop

    nop

    :goto_22
    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->set(II)V

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_23
    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->set(II)V

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_24
    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->setTimeZone(Ljava/util/TimeZone;)V

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_25
    check-cast v0, Ljava/util/GregorianCalendar;

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->set(II)V

    goto/32 :goto_2

    nop

    nop

    :goto_27
    invoke-virtual {v0, v2, v1}, Ljava/util/GregorianCalendar;->set(II)V

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_28
    const/4 v2, 0x2

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    :goto_29
    new-instance v1, Ljava/util/Date;

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_2a
    goto/32 :goto_18

    nop
.end method

.method public final b(I)V
    .locals 1

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    :goto_1
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    if-gt p1, v0, :cond_0

    nop

    goto/32 :goto_1

    nop

    :cond_0
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    nop

    :goto_4
    if-lez p1, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    :cond_1
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_5
    const/4 p1, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iput p1, p0, Lexy;->c:I

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const/16 v0, 0x1f

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_8
    iput p1, p0, Lexy;->c:I

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_9
    return-void

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    iput v0, p0, Lexy;->c:I

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public final c(I)V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    :goto_0
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_1
    return-void

    nop

    :goto_2
    iput p1, p0, Lexy;->d:I

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_3
    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const/16 v0, 0x17

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop
.end method

.method public final compareTo(Ljava/lang/Object;)I
    .locals 5

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_1
    rem-long/2addr v0, v3

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_2
    iget p0, p0, Lexy;->h:I

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_3
    const v1, 0x9

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_4
    cmp-long v2, v0, v2

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_5
    long-to-int p0, p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_6
    rem-long/2addr p0, v3

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_1d

    nop

    nop

    :goto_8
    if-lez v0, :cond_0

    nop

    goto/32 :goto_1d

    nop

    nop

    :cond_0
    goto/32 :goto_1c

    nop

    :goto_9
    const-wide/16 v3, 0x2

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    sub-long/2addr v0, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_b
    long-to-int p0, v0

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_c
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_d
    return p0

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_f
    return p0

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_11
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_12
    const-wide/16 v2, 0x0

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_13
    if-nez v2, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    :cond_1
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_14
    int-to-long p0, p0

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_15
    invoke-virtual {p0}, Lexy;->a()Ljava/util/Calendar;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_16
    const v0, 0x8

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

    :goto_17
    invoke-virtual {p1}, Lexy;->a()Ljava/util/Calendar;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_18
    check-cast p1, Lexy;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_19
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_1a
    iget p1, p1, Lexy;->h:I

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_1b
    sub-int/2addr p0, p1

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    goto/32 :goto_15

    nop

    nop

    nop
.end method

.method public final d(I)V
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_1
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iput p1, p0, Lexy;->e:I

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const/16 v0, 0x3b

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public final e(I)V
    .locals 1

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_0
    iput v0, p0, Lexy;->b:I

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    nop

    :goto_2
    iput p1, p0, Lexy;->b:I

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_3
    if-lez p1, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_b

    nop

    nop

    :goto_4
    const/16 v0, 0xc

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_5
    iput p1, p0, Lexy;->b:I

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_6
    return-void

    nop

    :goto_7
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_8
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_a
    if-gt p1, v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    :cond_1
    goto/32 :goto_0

    nop

    nop

    :goto_b
    const/4 p1, 0x1

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop
.end method

.method public final f(I)V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const/16 v0, 0x3b

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iput p1, p0, Lexy;->f:I

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_4
    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

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

.method public final g(I)V
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    const/16 v0, 0x270f

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_2
    iput p1, p0, Lexy;->a:I

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    nop

    :goto_4
    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    goto/32 :goto_1

    nop

    nop

    :goto_0
    return-object p0

    nop

    nop

    nop

    :goto_1
    invoke-static {p0}, Landroidx/wear/ambient/AmbientLifecycleObserverKt;->k(Lexy;)Ljava/lang/String;

    move-result-object p0

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method
