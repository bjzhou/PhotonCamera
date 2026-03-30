.class public final Lkdz;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljny;


# instance fields
.field public final synthetic a:Ljava/lang/Object;

.field private final synthetic b:I


# direct methods
.method public constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p1, p0, Lkdz;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    :goto_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_3
    iput p2, p0, Lkdz;->b:I

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 4

    goto/32 :goto_70

    nop

    nop

    :goto_0
    iget-object p1, p1, Lkek;->T:Lnft;

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const/4 v1, 0x1

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_2
    monitor-enter p1

    nop

    nop

    nop

    :try_start_0
    iget-boolean v0, p0, Lihg;->h:Z

    nop

    nop

    if-nez v0, :cond_0

    nop

    nop

    nop

    nop

    iget-object v0, p0, Lihg;->i:Landroid/os/Handler;

    nop

    iget-object v2, p0, Lihg;->k:Ljava/lang/Runnable;

    nop

    nop

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iput-boolean v1, p0, Lihg;->h:Z

    nop

    nop

    nop

    :cond_0
    monitor-exit p1

    nop

    nop

    nop

    nop

    nop

    return-void

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    monitor-exit p1

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_3c

    nop

    nop

    nop

    :goto_3
    if-eqz v2, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :cond_1
    :try_start_1
    iput-boolean v1, p0, Llqc;->d:Z

    nop

    nop

    monitor-exit p1

    nop

    nop

    return-void

    nop

    nop

    nop

    :goto_4
    monitor-exit p1

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_5
    const/16 v0, 0x13

    nop

    nop

    nop

    nop

    goto/32 :goto_7e

    nop

    nop

    nop

    :goto_6
    invoke-static {v1, v2, v0, p1}, Lmf;->f(Ljava/lang/String;CLscz;Ljava/lang/Throwable;)V

    :goto_7
    goto/32 :goto_54

    nop

    nop

    nop

    :goto_8
    iget-object p1, p0, Lihg;->j:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_9
    check-cast p0, Ljmu;

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_b
    check-cast p0, Lkek;

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    iget-object p0, p0, Lkek;->A:Landroid/os/Handler;

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

    nop

    :goto_d
    invoke-direct {p1, p0, v0, v1}, Ljxk;-><init>(Ljava/lang/Object;I[B)V

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_e
    invoke-virtual {p1}, Lkek;->k()V

    :goto_f
    goto/32 :goto_24

    nop

    nop

    nop

    :goto_10
    return-void

    nop

    nop

    nop

    :catchall_1
    move-exception p0

    nop

    nop

    :try_start_2
    monitor-exit v0

    nop

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    throw p0

    nop

    nop

    nop

    nop

    :catchall_2
    move-exception p0

    nop

    nop

    monitor-exit p1

    nop

    nop

    nop

    nop
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto/32 :goto_77

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/32 :goto_6e

    nop

    nop

    nop

    :goto_12
    iget-object p1, p1, Lkek;->Q:Lmhf;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    :goto_13
    iget-object p0, p0, Ljmu;->t:Lihg;

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_14
    iget-object p0, p0, Lkdz;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_15
    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_16
    if-nez v0, :cond_2

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    :cond_2
    goto/32 :goto_74

    nop

    nop

    nop

    nop

    nop

    :goto_17
    check-cast p0, Lkea;

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    :goto_18
    const/16 p1, 0x68

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    :goto_19
    iget-object p1, p0, Llqc;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    :goto_1a
    check-cast p0, Lkek;

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_1b
    if-nez p0, :cond_3

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-virtual {p1, v0}, Lmhf;->c(I)V

    goto/32 :goto_76

    nop

    nop

    nop

    nop

    :goto_1d
    iget-object p1, p0, Lkdz;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-virtual {v0}, Lscs;->b()Lsdo;

    move-result-object v0

    nop

    goto/32 :goto_64

    nop

    nop

    :goto_1f
    goto/32 :goto_47

    nop

    nop

    :goto_20
    goto/32 :goto_45

    nop

    nop

    :goto_21
    iget-object p1, p0, Lkdz;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6b

    nop

    nop

    nop

    nop

    nop

    :goto_22
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_23
    goto/32 :goto_6a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    iget-object p1, p0, Lkdz;->a:Ljava/lang/Object;

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

    nop

    :goto_25
    iget-object v0, p0, Lkdz;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    :goto_26
    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    :goto_27
    iget-object p0, p0, Lkek;->A:Landroid/os/Handler;

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28
    const/4 p1, 0x2

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    :goto_29
    if-ne v0, p1, :cond_4

    nop

    nop

    goto/32 :goto_7d

    nop

    :cond_4
    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_2a
    iget-object p0, p0, Lkek;->b:Llqc;

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_2b
    const/16 v2, 0xb39

    nop

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

    :goto_2c
    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    sget-object v0, Lkek;->a:Lsdb;

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_2e
    iput p1, v0, Ljmz;->a:F

    nop

    nop

    goto/32 :goto_79

    nop

    nop

    :goto_2f
    invoke-virtual {p1}, Lnft;->h()V

    goto/32 :goto_68

    nop

    nop

    nop

    nop

    nop

    :goto_30
    const/4 p1, 0x4

    nop

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    :goto_31
    if-eqz v0, :cond_5

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_42

    nop

    nop

    nop

    :goto_32
    iget-object p0, p0, Lkea;->b:Lkek;

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    :goto_33
    check-cast p1, Ljava/lang/Float;

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_34
    iget-object p1, p1, Lkek;->A:Landroid/os/Handler;

    nop

    nop

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    nop

    :goto_35
    check-cast p0, Lkek;

    nop

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    nop

    :goto_36
    iget-object p0, p0, Lkdz;->a:Ljava/lang/Object;

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

    nop

    :goto_37
    if-lez v0, :cond_6

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_1f

    nop

    :goto_38
    const/16 v0, 0x14

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

    :goto_39
    add-int/2addr v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    :goto_3a
    check-cast p1, Lkek;

    nop

    nop

    goto/32 :goto_75

    nop

    nop

    nop

    :goto_3b
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_3c
    throw p0

    nop

    nop

    :goto_3d
    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    goto/16 :goto_7

    nop

    :catch_0
    move-exception p1

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    iput v0, p1, Lkek;->q:I

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :goto_40
    check-cast p1, Lkek;

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    :goto_41
    iget-object v0, v0, Ljmu;->F:Ljmz;

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_42
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    :goto_43
    iget-object p1, p0, Lkdz;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    :goto_44
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_6d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_45
    iget v0, p0, Lkdz;->b:I

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_46
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_47
    goto/32 :goto_53

    nop

    nop

    nop

    nop

    nop

    :goto_48
    check-cast v0, Ljmu;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    :goto_49
    if-ne v0, p1, :cond_7

    nop

    goto/32 :goto_23

    nop

    nop

    :cond_7
    goto/32 :goto_65

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4a
    iget-object p0, p0, Lkek;->A:Landroid/os/Handler;

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    nop

    nop

    :goto_4b
    return-void

    nop

    nop

    nop

    nop

    :goto_4c
    goto/32 :goto_62

    nop

    nop

    :goto_4d
    monitor-enter p1

    nop

    nop

    nop

    nop

    nop

    :try_start_4
    iget-object v0, p0, Llqc;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    monitor-enter v0

    nop

    nop

    nop

    nop

    nop
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :try_start_5
    iget v2, p0, Llqc;->f:I

    nop

    if-eq v2, v1, :cond_9

    nop

    nop

    nop

    nop

    iget-object v2, p0, Llqc;->b:Ljava/util/LinkedList;

    nop

    nop

    nop

    invoke-virtual {v2}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v2

    nop

    nop

    nop

    nop

    nop

    if-nez v2, :cond_8

    nop

    nop

    nop

    nop

    goto :goto_4e

    nop

    :cond_8
    const/4 v2, 0x0

    nop

    goto :goto_4f

    nop

    :cond_9
    :goto_4e
    move v2, v1

    nop

    nop

    nop

    nop

    :goto_4f
    monitor-exit v0

    nop

    nop
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_50
    if-eqz p1, :cond_a

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_78

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_7a

    nop

    nop

    nop

    :goto_51
    const v0, 0x7f130074

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_52
    iget v0, p1, Lkek;->q:I

    nop

    goto/32 :goto_31

    nop

    nop

    :goto_53
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_54
    iget-object p0, p0, Lkdz;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_55
    check-cast p0, Lkek;

    nop

    nop

    nop

    nop

    goto/32 :goto_72

    nop

    nop

    nop

    nop

    nop

    :goto_56
    check-cast p1, Lkek;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_57
    iget-object p0, p0, Lkdz;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_58
    iget-boolean p1, p0, Lkek;->p:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    nop

    :goto_59
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_5a
    goto/32 :goto_43

    nop

    nop

    :goto_5b
    if-ne v0, p1, :cond_b

    nop

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    :cond_b
    goto/32 :goto_71

    nop

    nop

    nop

    nop

    :goto_5c
    iput-boolean v1, p0, Lkek;->j:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    :goto_5d
    return-void

    nop

    :goto_5e
    goto/32 :goto_67

    nop

    nop

    nop

    nop

    :goto_5f
    if-ne v0, p1, :cond_c

    nop

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    :cond_c
    goto/32 :goto_69

    nop

    nop

    nop

    nop

    nop

    :goto_60
    const/16 p1, 0x69

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_61
    iput-wide v2, p1, Lkek;->M:J

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_62
    new-instance p1, Ljxk;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_63
    check-cast p1, Lkek;

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_64
    const-string v1, "photoSpherePreviewWriter interrupted."

    nop

    goto/32 :goto_2b

    nop

    nop

    :goto_65
    const/4 p1, 0x3

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_66
    const/16 v0, 0x65

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_67
    iget-object p0, p0, Lkdz;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_68
    iget-object p1, p0, Lkdz;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    :goto_69
    new-instance p1, Ljxk;

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    :goto_6a
    iget-object p0, p0, Lkdz;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_73

    nop

    nop

    nop

    nop

    nop

    :goto_6b
    check-cast p1, Lkek;

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6c
    const/4 v1, 0x0

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    :goto_6d
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    :goto_6e
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_6f
    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :goto_70
    const v0, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_7b

    nop

    nop

    nop

    :goto_71
    const/4 p1, 0x5

    nop

    nop

    nop

    goto/32 :goto_6c

    nop

    nop

    :goto_72
    iget-object p0, p0, Lkek;->A:Landroid/os/Handler;

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_73
    check-cast p0, Lkek;

    nop

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

    :goto_74
    if-ne v0, v1, :cond_d

    nop

    goto/32 :goto_6f

    nop

    :cond_d
    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_75
    iget v0, p1, Lkek;->q:I

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    :goto_76
    iget-object p0, p0, Lkdz;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_77
    throw p0

    nop

    nop

    :goto_78
    goto/32 :goto_7c

    nop

    nop

    :goto_79
    invoke-virtual {v0}, Ljmz;->a()V

    goto/32 :goto_57

    nop

    nop

    nop

    :goto_7a
    iput-boolean v1, p0, Lkek;->p:Z

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_7b
    const v1, 0x14

    nop

    goto/32 :goto_44

    nop

    nop

    :goto_7c
    return-void

    nop

    nop

    nop

    nop

    :goto_7d
    :try_start_6
    iget-object p1, p0, Lkdz;->a:Ljava/lang/Object;

    nop

    nop

    nop

    check-cast p1, Lkek;

    nop

    nop

    nop

    iget-object p1, p1, Lkek;->v:Ljava/lang/Thread;

    nop

    nop

    nop

    invoke-virtual {p1}, Ljava/lang/Thread;->join()V
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_0

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7e
    invoke-direct {p1, p0, v0, v1}, Ljxk;-><init>(Ljava/lang/Object;I[B)V

    goto/32 :goto_36

    nop

    nop
.end method
