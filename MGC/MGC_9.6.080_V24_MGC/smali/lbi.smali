.class public final Llbi;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lfuq;


# static fields
.field public static l:Lj$/util/Optional;


# instance fields
.field public final a:Lfvp;

.field public b:Lsuu;

.field public final c:Ljava/lang/Runnable;

.field public final d:Lpik;

.field public final e:Lhwy;

.field public final f:Lmhz;

.field private final g:Loxh;

.field private final h:Llfr;

.field private final i:Loxv;

.field private final j:Loyd;

.field private final k:Lhwy;

.field private final m:Lkog;


# direct methods
.method private final 33f5b80483094659737b73d90f80a8a4m()V
    .locals 4

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_0
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_3
    :try_start_0
    iget-object v0, p0, Llbi;->g:Loxh;

    nop

    nop

    nop

    nop

    nop

    new-instance v1, Lkxv;

    nop

    nop

    nop

    nop

    const/16 v2, 0xb

    nop

    nop

    const/4 v3, 0x0

    nop

    nop

    invoke-direct {v1, p0, v2, v3}, Lkxv;-><init>(Ljava/lang/Object;I[B)V

    invoke-virtual {v0, v1}, Loxh;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_4
    const v0, 0x6

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_5
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const v1, 0x19

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_7
    if-lez v0, :cond_0

    nop

    goto/32 :goto_3

    nop

    nop

    :cond_0
    goto/32 :goto_2

    nop

    :goto_8
    return-void

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_5

    nop

    nop
.end method

.method public constructor <init>(Lpik;Loxh;Lfvp;Lhwy;Lmhz;Lhwy;Llfr;Loxv;Loyd;Lkog;)V
    .locals 3

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_0
    sput-object v0, Llbi;->l:Lj$/util/Optional;

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_1
    iput-object p1, p0, Llbi;->d:Lpik;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_2
    iput-object v0, p0, Llbi;->c:Ljava/lang/Runnable;

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_3
    iput-object p2, p0, Llbi;->g:Loxh;

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iput-object p9, p0, Llbi;->j:Loyd;

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_7
    invoke-static {}, Lj$/util/Optional;->empty()Lj$/util/Optional;

    move-result-object v0

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_8
    const v0, 0x20

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_9
    return-void

    nop

    nop

    :goto_a
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_b
    iput-object p10, p0, Llbi;->m:Lkog;

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_c
    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_d
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_e
    iput-object p4, p0, Llbi;->e:Lhwy;

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_f
    const/16 v1, 0xa

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_10
    iput-object p7, p0, Llbi;->h:Llfr;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_11
    iput-object p3, p0, Llbi;->a:Lfvp;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_12
    iput-object p8, p0, Llbi;->i:Loxv;

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_15
    iput-object p5, p0, Llbi;->f:Lmhz;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_16
    invoke-direct {v0, p0, v1, v2}, Lkxv;-><init>(Ljava/lang/Object;I[B)V

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_14

    nop

    nop

    nop

    :goto_18
    new-instance v0, Lkxv;

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_19
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    :cond_0
    goto/32 :goto_13

    nop

    :goto_1a
    const v1, 0x11

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_1b
    iput-object p6, p0, Llbi;->k:Lhwy;

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
.end method


# virtual methods
.method public final a(Lfdn;)Lfwg;
    .locals 7

    goto/32 :goto_58

    nop

    nop

    :goto_0
    iget-object v0, p0, Llbi;->b:Lsuu;

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    :goto_2
    iget-object v0, v0, Loxv;->d:Ljava/lang/Object;

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

    nop

    :goto_3
    iput-object v1, v2, Lphr;->d:Ljava/lang/Integer;

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {v0, v1}, Lsuu;->cancel(Z)Z

    :goto_5
    goto/32 :goto_60

    nop

    nop

    nop

    nop

    :goto_6
    iget-object v1, p0, Llbi;->j:Loyd;

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    :goto_7
    if-nez v1, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_67

    nop

    :goto_9
    const/4 v1, 0x4

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_a
    if-nez v6, :cond_1

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

    nop

    :cond_1
    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-interface {v0, v2}, Loyn;->a(Ljava/lang/Object;)V

    goto/32 :goto_41

    nop

    nop

    nop

    :goto_c
    iput-object v0, p0, Llbi;->b:Lsuu;

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    :goto_d
    invoke-direct {v0}, Lsuu;-><init>()V

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_e
    iget-object v2, p0, Llbi;->c:Ljava/lang/Runnable;

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_f
    iget-object v0, v0, Lhwy;->e:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_10
    iget-object v0, v0, Loxv;->d:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_11
    if-lez v0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_67

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_66

    nop

    :goto_12
    iget-object v1, p0, Llbi;->d:Lpik;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_13
    new-instance v0, Lsuu;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_14
    invoke-virtual {v4, v5}, Llns;->f(Landroid/graphics/PointF;)V

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    iget-object v0, p0, Llbi;->i:Loxv;

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_16
    check-cast v0, Ljava/lang/Boolean;

    nop

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    if-nez v0, :cond_3

    nop

    nop

    goto/32 :goto_53

    nop

    :cond_3
    goto/32 :goto_52

    nop

    nop

    nop

    :goto_18
    check-cast v3, Ljava/lang/Boolean;

    nop

    goto/32 :goto_5c

    nop

    nop

    :goto_19
    invoke-virtual {p1}, Lfdn;->j()V

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-static {}, Lfsh;->l()Lphf;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6e

    nop

    nop

    nop

    :goto_1b
    iget-object v1, p0, Llbi;->k:Lhwy;

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    :goto_1c
    check-cast v0, Llsd;

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-direct {v0, v2}, Lphq;-><init>(Lphr;)V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    iget-object v0, p0, Llbi;->e:Lhwy;

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_1f
    check-cast v0, Loxv;

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    check-cast v2, Lphr;

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

    :goto_21
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_22
    iget-object v0, p0, Llbi;->g:Loxh;

    nop

    goto/32 :goto_62

    nop

    nop

    nop

    :goto_23
    invoke-virtual {v0}, Llfr;->h()V

    :goto_24
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_25
    invoke-virtual {v0, v2}, Lfvp;->c(Ljava/lang/Runnable;)V

    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_26
    goto/16 :goto_4f

    nop

    nop

    nop

    nop

    nop

    :goto_27
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_28
    invoke-direct {v5, v6}, Lqek;-><init>(I)V

    goto/32 :goto_42

    nop

    nop

    :goto_29
    if-eqz v0, :cond_4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    new-instance v5, Lqek;

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    :goto_2b
    return-object v5

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    invoke-virtual {v1, v0}, Lpik;->r(Lpgd;)V

    goto/32 :goto_5a

    nop

    nop

    nop

    :goto_2e
    invoke-static {}, Lpik;->v()Lpgc;

    move-result-object v2

    nop

    goto/32 :goto_4c

    nop

    nop

    :goto_2f
    iget-object v0, p0, Llbi;->f:Lmhz;

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    :goto_30
    check-cast v0, Loxv;

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

    :goto_31
    invoke-virtual {v5}, Lj$/util/Optional;->isEmpty()Z

    move-result v5

    nop

    nop

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    :goto_32
    check-cast v1, Ljava/lang/Boolean;

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_33
    iget-object v0, p0, Llbi;->h:Llfr;

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_34
    check-cast v3, Landroid/graphics/PointF;

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    :goto_35
    iget-object v1, p0, Llbi;->d:Lpik;

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_36
    iget v0, v0, Llsd;->g:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_70

    nop

    nop

    nop

    :goto_37
    return-object v1

    nop

    nop

    nop

    :goto_38
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_39
    invoke-direct {v5}, Lfve;-><init>()V

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    invoke-direct {p0}, Llbi;->33f5b80483094659737b73d90f80a8a4m()V

    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    :goto_3b
    iput-object v1, v2, Lphr;->h:[Landroid/hardware/camera2/params/MeteringRectangle;

    nop

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    :goto_3c
    if-eqz v0, :cond_5

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_6d

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    invoke-virtual {v1, v3}, Lhwy;->c(Landroid/graphics/PointF;)[Landroid/hardware/camera2/params/MeteringRectangle;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    :goto_3f
    check-cast v4, Llns;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    :goto_40
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    :goto_41
    iget-object v0, p0, Llbi;->e:Lhwy;

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

    :goto_42
    invoke-virtual {v5, v3}, Lqek;->a(Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v5

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_43
    const v1, 0x16

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    :goto_44
    iget-object v3, p1, Lfdn;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    :goto_45
    invoke-virtual {p1}, Lfdn;->k()V

    goto/32 :goto_22

    nop

    nop

    :goto_46
    iput-object v0, v2, Lphr;->i:[Landroid/hardware/camera2/params/MeteringRectangle;

    nop

    nop

    :goto_47
    goto/32 :goto_49

    nop

    nop

    nop

    nop

    :goto_48
    iget-object v6, p0, Llbi;->m:Lkog;

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_49
    new-instance v0, Lphq;

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4a
    sget-object v5, Llbi;->l:Lj$/util/Optional;

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_4b
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    :goto_4c
    iget-object v0, v0, Loxv;->d:Ljava/lang/Object;

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_4d
    if-nez v0, :cond_6

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_4e
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    :goto_4f
    goto/32 :goto_1e

    nop

    nop

    :goto_50
    invoke-interface {v3}, Loyd;->cM()Ljava/lang/Object;

    move-result-object v3

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_51
    sget-object v4, Lcom/a;->ha:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_69

    nop

    nop

    :goto_52
    goto :goto_4f

    nop

    :goto_53
    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_54
    const/4 v1, 0x1

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    :goto_55
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_68

    nop

    nop

    :goto_56
    invoke-virtual {v6}, Lpoh;->g()I

    move-result v6

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_57
    invoke-interface {v1}, Loyd;->cM()Ljava/lang/Object;

    move-result-object v1

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :goto_58
    const v0, 0x1f

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    :goto_59
    invoke-direct {v1, p0, v0, p1}, Llbh;-><init>(Llbi;Lsuu;Lfdn;)V

    goto/32 :goto_37

    nop

    nop

    nop

    :goto_5a
    goto/16 :goto_6f

    nop

    nop

    :goto_5b
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_5c
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5d
    if-nez v3, :cond_7

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    :cond_7
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_5e
    if-eqz v5, :cond_8

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_6a

    nop

    nop

    :goto_5f
    new-instance v1, Llbh;

    nop

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    :goto_60
    iget-object v0, p0, Llbi;->a:Lfvp;

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_61
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_62
    invoke-virtual {v0}, Loxh;->b()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_63
    iget-object v0, v0, Lhwy;->e:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_64
    invoke-virtual {v0, v1}, Lhwy;->c(Landroid/graphics/PointF;)[Landroid/hardware/camera2/params/MeteringRectangle;

    move-result-object v0

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    :goto_65
    check-cast v1, Landroid/graphics/PointF;

    nop

    nop

    goto/32 :goto_64

    nop

    nop

    :goto_66
    goto/32 :goto_38

    nop

    nop

    nop

    :goto_67
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_68
    iget-object v0, v0, Lmhz;->b:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_69
    if-nez v4, :cond_9

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6a
    new-instance v5, Lfve;

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    :goto_6b
    check-cast v0, Ljava/lang/Boolean;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_6c
    iget-object v1, p1, Lfdn;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_65

    nop

    nop

    nop

    nop

    :goto_6d
    iget-object v0, p0, Llbi;->k:Lhwy;

    nop

    goto/32 :goto_6c

    nop

    nop

    :goto_6e
    invoke-virtual {v1, v0, v2}, Lpik;->p(Lpgd;Lphf;)V

    :goto_6f
    goto/32 :goto_13

    nop

    nop

    :goto_70
    iget-object v3, p0, Llbi;->j:Loyd;

    nop

    nop

    goto/32 :goto_50

    nop

    nop
.end method

.method public final b(ZZ)V
    .locals 3

    goto/32 :goto_37

    nop

    nop

    nop

    :goto_0
    iget-object v0, p0, Llbi;->f:Lmhz;

    nop

    goto/32 :goto_19

    nop

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
    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p1}, Lhwy;->b()[Landroid/hardware/camera2/params/MeteringRectangle;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iget-object v0, p0, Llbi;->h:Llfr;

    nop

    goto/32 :goto_3f

    nop

    nop

    :goto_7
    check-cast v1, Lphr;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    check-cast v0, Lphr;

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iget-object v0, p0, Llbi;->e:Lhwy;

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    :goto_a
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    :goto_b
    invoke-virtual {p1}, Lhwy;->b()[Landroid/hardware/camera2/params/MeteringRectangle;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_c
    iget-object p1, p0, Llbi;->k:Lhwy;

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_d
    invoke-static {}, Lpik;->v()Lpgc;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_e
    iget-object v0, p0, Llbi;->d:Lpik;

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    :goto_f
    iput-object p1, p2, Lphr;->i:[Landroid/hardware/camera2/params/MeteringRectangle;

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    if-nez p2, :cond_0

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

    :cond_0
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    invoke-virtual {p1}, Lhwy;->b()[Landroid/hardware/camera2/params/MeteringRectangle;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    :goto_13
    invoke-virtual {v0, v1}, Lfvp;->c(Ljava/lang/Runnable;)V

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_14
    if-nez v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    :cond_1
    goto/32 :goto_35

    nop

    nop

    :goto_15
    new-instance v1, Landroid/graphics/PointF;

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    iget-object p1, p0, Llbi;->k:Lhwy;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_17
    check-cast p2, Lphr;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_18
    move-object p2, v0

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_19
    invoke-virtual {v0}, Lmhz;->s()V

    :goto_1a
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    return-void

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    iget-object p1, p1, Loxv;->d:Ljava/lang/Object;

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-virtual {v0}, Lj$/util/Optional;->isEmpty()Z

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_1f
    if-nez p1, :cond_2

    nop

    nop

    goto/32 :goto_3a

    nop

    :cond_2
    goto/32 :goto_41

    nop

    nop

    nop

    :goto_20
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    :goto_21
    iput-object p1, v1, Lphr;->h:[Landroid/hardware/camera2/params/MeteringRectangle;

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_22
    iput-object p1, v0, Lphr;->j:[Landroid/hardware/camera2/params/MeteringRectangle;

    nop

    nop

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

    :goto_23
    invoke-direct {p1, v0}, Lphq;-><init>(Lphr;)V

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_24
    iget p1, p1, Llsd;->g:I

    nop

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

    :goto_25
    if-nez p2, :cond_3

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    sget-object v0, Lcom/a;->ha:Ljava/lang/Object;

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_27
    invoke-virtual {p0, p1}, Lpik;->r(Lpgd;)V

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_28
    invoke-virtual {v0, v1}, Llns;->f(Landroid/graphics/PointF;)V

    :goto_29
    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    iget-object v0, p0, Llbi;->a:Lfvp;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    :goto_2b
    move-object v1, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    new-instance p1, Lphq;

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_2d
    iget-object p1, p0, Llbi;->i:Loxv;

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_2e
    if-eqz v0, :cond_4

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_1b

    nop

    nop

    :goto_2f
    iget-object p0, p0, Llbi;->d:Lpik;

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_30
    invoke-direct {v1, v2, v2}, Landroid/graphics/PointF;-><init>(FF)V

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_31
    invoke-virtual {v0}, Lhwy;->r()V

    :goto_32
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_33
    if-nez p1, :cond_5

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :cond_5
    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_34
    iget-object v1, p0, Llbi;->c:Ljava/lang/Runnable;

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

    :goto_35
    check-cast v0, Llns;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_36
    const/high16 v2, 0x3f000000    # 0.5f

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_37
    const v0, 0x3

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_38
    check-cast p1, Llsd;

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_39
    iput-object p1, v1, Lphr;->d:Ljava/lang/Integer;

    nop

    nop

    nop

    :goto_3a
    goto/32 :goto_11

    nop

    nop

    nop

    :goto_3b
    if-lez v0, :cond_6

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :cond_6
    goto/32 :goto_4

    nop

    :goto_3c
    invoke-virtual {v0, p1, p2, v1}, Lpik;->q(ZZZ)V

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    const/4 v1, 0x0

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    const v1, 0xb

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    :goto_3f
    invoke-virtual {v0}, Llfr;->f()V

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_40
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_41
    iget-object p1, p0, Llbi;->k:Lhwy;

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_42
    goto/32 :goto_5

    nop

    nop

    :goto_43
    sget-object v0, Llbi;->l:Lj$/util/Optional;

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop
.end method
