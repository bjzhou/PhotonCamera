.class public final synthetic Lgtc;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:Z

.field public final synthetic b:J

.field public final synthetic c:Ljava/lang/Object;

.field private final synthetic d:I


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;ZJI)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    :goto_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iput-object p1, p0, Lgtc;->c:Ljava/lang/Object;

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
    iput p5, p0, Lgtc;->d:I

    nop

    nop

    nop

    nop

    goto/32 :goto_0

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
    iput-boolean p2, p0, Lgtc;->a:Z

    nop

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

    :goto_5
    iput-wide p3, p0, Lgtc;->b:J

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 5

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-boolean v0, p0, Lgtc;->a:Z

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iget-object p0, v2, Lgth;->l:Lpbd;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_64

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p0}, Lgtu;->c()V

    :goto_3
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_4
    iget-wide v2, p0, Lgtc;->b:J

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_23

    nop

    :goto_6
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_7
    check-cast v0, Lpbe;

    nop

    nop

    goto/32 :goto_6a

    nop

    nop

    :goto_8
    invoke-virtual {p0}, Lgtu;->c()V

    :goto_9
    goto/32 :goto_58

    nop

    nop

    nop

    nop

    nop

    :goto_a
    return-object v1

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    move-object p0, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    :goto_d
    const/4 v2, 0x1

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    check-cast v2, Lgth;

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_f
    if-ne v0, v2, :cond_0

    nop

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-virtual {p0, v3, v4}, Lpbd;->j(J)V

    :goto_11
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_12
    check-cast v2, Lpap;

    nop

    nop

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    nop

    :goto_13
    invoke-virtual {v0, v2, v3}, Lpbd;->j(J)V

    :goto_14
    goto/32 :goto_51

    nop

    nop

    nop

    nop

    nop

    :goto_15
    iget-object p0, v2, Lgth;->m:Lpbd;

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    :goto_16
    iget-wide v3, p0, Lgtc;->b:J

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    :goto_17
    return-object v1

    nop

    nop

    :goto_18
    goto/32 :goto_43

    nop

    nop

    nop

    nop

    :goto_19
    iget-object v2, p0, Lgtc;->c:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    iget-object v0, p0, Lgtc;->c:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    iget-boolean v2, p0, Lgtc;->a:Z

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_1c
    if-nez p0, :cond_1

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_1d
    check-cast v2, Lgth;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1e
    if-nez v2, :cond_2

    nop

    goto/32 :goto_33

    nop

    :cond_2
    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    iget-wide v3, p0, Lgtc;->b:J

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_20
    if-nez v0, :cond_3

    nop

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    :cond_3
    goto/32 :goto_47

    nop

    nop

    nop

    nop

    :goto_21
    iget-object p0, v0, Lpbe;->l:Lgtu;

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    return-object v1

    nop

    nop

    nop

    :goto_23
    goto/32 :goto_2e

    nop

    nop

    :goto_24
    if-ne v0, v2, :cond_4

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_25
    const/4 v2, 0x2

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_26
    iget v0, p0, Lgtc;->d:I

    nop

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    :goto_27
    iget-object v2, v0, Lgth;->e:Lrss;

    nop

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    nop

    :goto_28
    if-nez v0, :cond_5

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_29
    move-object p0, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    if-nez v3, :cond_6

    nop

    nop

    nop

    goto/32 :goto_69

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_2c
    iget-object v0, v0, Lpbe;->j:Lpbd;

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_2e
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_2f
    if-nez v2, :cond_7

    nop

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_55

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_30
    invoke-virtual {p0}, Lpbd;->k()V

    goto/32 :goto_34

    nop

    nop

    :goto_31
    const v1, 0x20

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_32
    goto/16 :goto_14

    nop

    nop

    nop

    nop

    :goto_33
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_34
    goto/16 :goto_11

    nop

    nop

    nop

    nop

    :goto_35
    goto/32 :goto_6b

    nop

    nop

    :goto_36
    const/4 v2, 0x3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    nop

    nop

    :goto_37
    invoke-virtual {p0, v3, v4}, Lpap;->g(J)V

    :goto_38
    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    :goto_39
    invoke-virtual {v2}, Lrss;->c()Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_3a
    invoke-virtual {p0}, Lpbd;->k()V

    goto/32 :goto_5a

    nop

    nop

    :goto_3b
    if-nez v3, :cond_8

    nop

    nop

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    :cond_8
    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    check-cast v2, Lgth;

    nop

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    :goto_3d
    const v0, 0x1a

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    :goto_3e
    const/4 v1, 0x0

    nop

    goto/32 :goto_59

    nop

    nop

    :goto_3f
    iget-object p0, v2, Lgth;->m:Lpbd;

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_40
    if-nez v0, :cond_9

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    :cond_9
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_41
    if-nez p0, :cond_a

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_2

    nop

    nop

    :goto_42
    invoke-virtual {p0}, Lpap;->h()V

    goto/32 :goto_68

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_43
    iget-object v0, p0, Lgtc;->c:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    :goto_44
    if-nez v3, :cond_b

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    :cond_b
    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_45
    goto :goto_4d

    nop

    nop

    nop

    nop

    :goto_46
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_47
    check-cast v2, Lgth;

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    :goto_48
    iget-boolean v3, p0, Lgtc;->a:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    :goto_49
    check-cast p0, Lpap;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    :goto_4a
    iget-object v2, p0, Lgtc;->c:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_4b
    invoke-virtual {v0}, Lpbd;->k()V

    goto/32 :goto_32

    nop

    nop

    :goto_4c
    invoke-virtual {v2, v3, v4}, Lpap;->g(J)V

    :goto_4d
    goto/32 :goto_21

    nop

    nop

    nop

    :goto_4e
    iget-object p0, v2, Lgth;->l:Lpbd;

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    :goto_4f
    check-cast p0, Lpap;

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    :goto_50
    iget-wide v3, p0, Lgtc;->b:J

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_51
    return-object v1

    nop

    nop

    :goto_52
    goto/32 :goto_61

    nop

    nop

    nop

    nop

    nop

    :goto_53
    if-ne v0, v2, :cond_c

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :cond_c
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_54
    check-cast v0, Lgth;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    :goto_55
    iget-boolean v3, p0, Lgtc;->a:Z

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    :goto_56
    invoke-virtual {v2}, Lpap;->c()V

    :goto_57
    goto/32 :goto_a

    nop

    nop

    :goto_58
    iget-object p0, v0, Lpbe;->k:Lpap;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_62

    nop

    nop

    :goto_59
    if-nez v0, :cond_d

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_67

    nop

    :cond_d
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_5a
    goto :goto_65

    nop

    :goto_5b
    goto/32 :goto_50

    nop

    nop

    nop

    :goto_5c
    invoke-virtual {v2}, Lrss;->h()Z

    move-result v3

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    :goto_5d
    invoke-virtual {v2}, Lpap;->h()V

    goto/32 :goto_45

    nop

    nop

    nop

    :goto_5e
    iget-boolean v0, p0, Lgtc;->a:Z

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_5f
    iget-object p0, v0, Lgth;->n:Lgtu;

    nop

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    :goto_60
    check-cast v0, Lpbe;

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_61
    iget-object v0, p0, Lgtc;->c:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    :goto_62
    invoke-virtual {p0}, Lpap;->c()V

    :goto_63
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_64
    invoke-virtual {p0, v3, v4}, Lpbd;->j(J)V

    :goto_65
    goto/32 :goto_66

    nop

    nop

    :goto_66
    return-object v1

    nop

    :goto_67
    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    nop

    :goto_68
    goto/16 :goto_38

    nop

    nop

    nop

    nop

    nop

    :goto_69
    goto/32 :goto_1f

    nop

    nop

    :goto_6a
    iget-object v2, v0, Lpbe;->k:Lpap;

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    :goto_6b
    iget-wide v3, p0, Lgtc;->b:J

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    :goto_6c
    if-lez v0, :cond_e

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

    :cond_e
    goto/32 :goto_5

    nop
.end method
