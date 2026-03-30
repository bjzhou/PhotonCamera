.class public final synthetic Lhyt;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lppc;


# instance fields
.field public final synthetic a:Lhyu;

.field public final synthetic b:J


# direct methods
.method public synthetic constructor <init>(Lhyu;J)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_0
    iput-wide p2, p0, Lhyt;->b:J

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    :goto_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_3
    iput-object p1, p0, Lhyt;->a:Lhyu;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a(Ljava/util/List;)V
    .locals 14

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_0
    aput v7, v0, v5

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_1
    iget v7, v1, Lppf;->f:F

    nop

    nop

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {v0}, Lscs;->c()Lsdo;

    move-result-object v0

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_3
    if-eqz v4, :cond_0

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

    :cond_0
    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iget-wide v12, v4, Lppf;->e:J

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    :goto_5
    check-cast v0, Lscz;

    nop

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iget v1, v4, Lppf;->g:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const/4 v8, 0x0

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    :goto_8
    invoke-static {v7, v8, v9, v10}, Lihy;->a(FFD)F

    move-result v7

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    move v7, v6

    nop

    nop

    :goto_a
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const/4 p1, 0x2

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    :goto_c
    const/16 v1, 0x5eb

    nop

    goto/32 :goto_68

    nop

    nop

    nop

    nop

    nop

    :goto_d
    check-cast v4, Lppf;

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_e
    iget v4, v4, Lppf;->h:F

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_f
    return-void

    nop

    nop

    :goto_10
    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_11
    move v7, v5

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    :goto_13
    new-array v0, v7, [F

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

    :goto_14
    iget-wide v7, v4, Lppf;->e:J

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    :goto_15
    const v0, 0x8

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_10

    nop

    :goto_17
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_18
    cmp-long v7, v7, v9

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    :goto_19
    aput v1, v0, v5

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    if-gtz v7, :cond_1

    nop

    nop

    goto/32 :goto_30

    nop

    :cond_1
    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_1b
    iget v5, v1, Lppf;->g:F

    nop

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    if-eqz v1, :cond_2

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    :cond_2
    goto/32 :goto_64

    nop

    nop

    nop

    :goto_1d
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    :goto_1e
    if-nez v1, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :cond_3
    goto/32 :goto_63

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    const/4 v6, 0x1

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    :goto_20
    goto/16 :goto_a

    nop

    nop

    nop

    :goto_21
    goto/32 :goto_9

    nop

    nop

    :goto_22
    invoke-interface {v0, v1}, Lscz;->s(Ljava/lang/String;)V

    :goto_23
    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    nop

    :goto_24
    aput v4, v0, v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    :goto_25
    iget-object p0, p0, Lhyu;->d:Lhze;

    nop

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    :goto_26
    invoke-static {v1, v4, v9, v10}, Lihy;->a(FFD)F

    move-result v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6a

    nop

    nop

    nop

    nop

    :goto_27
    goto/16 :goto_61

    nop

    nop

    nop

    nop

    :goto_28
    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_29
    move-object v4, v0

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    cmp-long v7, v7, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_2d
    const/16 v1, 0xa

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    :goto_2e
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    :goto_2f
    goto :goto_2a

    nop

    nop

    nop

    nop

    :goto_30
    goto/32 :goto_57

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_31
    sub-long v10, v2, v8

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_32
    goto/16 :goto_6b

    nop

    nop

    nop

    nop

    nop

    :goto_33
    goto/32 :goto_4e

    nop

    nop

    :goto_34
    aput v1, v0, v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    :goto_35
    iget v4, v1, Lppf;->g:F

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_36
    aput v4, v0, v5

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_37
    iget v4, v1, Lppf;->f:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    :goto_38
    goto/16 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_39
    goto/32 :goto_11

    nop

    nop

    :goto_3a
    invoke-static {v5, v7, v9, v10}, Lihy;->a(FFD)F

    move-result v5

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    :goto_3b
    goto/16 :goto_6b

    nop

    nop

    nop

    :goto_3c
    goto/32 :goto_3

    nop

    nop

    :goto_3d
    aput v1, v0, p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    :goto_3e
    const v1, 0x4

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_40
    if-nez v4, :cond_4

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_3f

    nop

    nop

    :goto_41
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_42
    iget v1, v4, Lppf;->f:F

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_43
    iget v1, v4, Lppf;->h:F

    nop

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_44
    if-gt v0, v1, :cond_5

    nop

    goto/32 :goto_23

    nop

    :cond_5
    goto/32 :goto_56

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_45
    new-array v0, v7, [F

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_46
    sget-object v8, Lwireless/android/learning/acmi/p11/metadata/eGU/nQGhNZMKfLcyQ;->vINJmyXjgA:Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_67

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_47
    aput v1, v0, p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_48
    const/4 v7, 0x3

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_49
    if-nez v0, :cond_6

    nop

    nop

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_53

    nop

    nop

    nop

    nop

    :goto_4a
    if-gtz v7, :cond_7

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

    :cond_7
    goto/32 :goto_38

    nop

    nop

    :goto_4b
    iget v1, v1, Lppf;->h:F

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_4c
    if-lez v0, :cond_8

    nop

    goto/32 :goto_17

    nop

    nop

    :cond_8
    goto/32 :goto_16

    nop

    :goto_4d
    iget-wide v9, v1, Lppf;->e:J

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    iget-wide v8, v1, Lppf;->e:J

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_4f
    const-string v1, "Warning: Samples used for vector determination is larger than 10 elements. This code is O(n) and expects small list sizes!"

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_50
    iget v1, v1, Lppf;->h:F

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_51
    long-to-double v11, v12

    nop

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    :goto_52
    sub-long/2addr v12, v8

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_53
    iget-object p0, p0, Lhyt;->a:Lhyu;

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_54
    invoke-virtual {p0, v2, v3, v0}, Lhze;->f(J[F)V

    :goto_55
    goto/32 :goto_f

    nop

    nop

    :goto_56
    sget-object v0, Lihy;->a:Lsdb;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_57
    move-object v1, v4

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_58
    goto/16 :goto_6b

    nop

    :goto_59
    goto/32 :goto_66

    nop

    nop

    nop

    :goto_5a
    iget v7, v4, Lppf;->g:F

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    :goto_5b
    iget v8, v4, Lppf;->f:F

    nop

    nop

    goto/32 :goto_62

    nop

    nop

    nop

    nop

    nop

    :goto_5c
    const/4 v5, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_5d
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_69

    nop

    nop

    nop

    :goto_5e
    div-double/2addr v9, v11

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_5f
    aput v5, v0, v6

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    :goto_60
    move-object v1, v0

    nop

    nop

    nop

    nop

    nop

    :goto_61
    goto/32 :goto_65

    nop

    nop

    nop

    nop

    :goto_62
    long-to-double v9, v10

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    :goto_63
    iget-wide v7, v4, Lppf;->e:J

    nop

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_64
    if-eqz v4, :cond_9

    nop

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    :cond_9
    goto/32 :goto_58

    nop

    nop

    :goto_65
    iget-wide v2, p0, Lhyt;->b:J

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_66
    new-array v0, v7, [F

    nop

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    :goto_67
    invoke-static {v7, v8}, Lrrf;->m(ZLjava/lang/Object;)V

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_68
    invoke-interface {v0, v1}, Lscz;->M(I)Lsdo;

    move-result-object v0

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_69
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6a
    aput v1, v0, p1

    nop

    nop

    nop

    nop

    nop

    :goto_6b
    goto/32 :goto_49

    nop

    nop

    nop
.end method
