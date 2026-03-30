.class public final Lgzv;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# static fields
.field private static final i:Landroid/net/Uri;

.field private static final j:Landroid/net/Uri;


# instance fields
.field public final a:Lmse;

.field public final b:Landroid/content/Context;

.field public final c:Ljava/util/concurrent/Executor;

.field public d:Lgzs;

.field public e:Lgzs;

.field public f:Z

.field public g:Z

.field public final h:Lhoh;

.field private final k:Ljava/util/concurrent/ScheduledExecutorService;

.field private l:Lmtj;

.field private m:Lmtj;

.field private n:Landroid/view/View;

.field private final o:Lnar;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    :goto_1
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_2
    const-string v0, "https://www.gstatic.com/aiux/gca/experimental/sdr_peppers.mp4"

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_3
    sput-object v0, Lgzv;->j:Landroid/net/Uri;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_4
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const-string v0, "https://www.gstatic.com/aiux/gca/experimental/hdr_peppers.mp4"

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_6
    sput-object v0, Lgzv;->i:Landroid/net/Uri;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop
.end method

.method public constructor <init>(Lmse;Lnar;Landroid/content/Context;Ljava/util/concurrent/Executor;Ljava/util/concurrent/ScheduledExecutorService;Lhoh;)V
    .locals 1

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p6, p0, Lgzv;->h:Lhoh;

    nop

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

    :goto_1
    iput-boolean v0, p0, Lgzv;->g:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_2
    iput-boolean v0, p0, Lgzv;->f:Z

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iput-object p4, p0, Lgzv;->c:Ljava/util/concurrent/Executor;

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iput-object p3, p0, Lgzv;->b:Landroid/content/Context;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iput-object p5, p0, Lgzv;->k:Ljava/util/concurrent/ScheduledExecutorService;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const/4 v0, 0x0

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_8
    return-void

    nop

    nop

    :goto_9
    iput-object p1, p0, Lgzv;->a:Lmse;

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_a
    iput-object p2, p0, Lgzv;->o:Lnar;

    nop

    goto/32 :goto_5

    nop

    nop

    nop
.end method


# virtual methods
.method public final a()V
    .locals 21

    goto/32 :goto_4e

    nop

    nop

    nop

    :goto_0
    invoke-static {v2}, Lrss;->j(Ljava/lang/Object;)Lrss;

    move-result-object v14

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
    move-object/from16 v17, v3

    nop

    nop

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-direct/range {v12 .. v20}, Lgzs;-><init>(Lmtj;Lrss;Lnar;Landroid/content/Context;Ljava/util/concurrent/Executor;Landroid/net/Uri;Ljava/util/concurrent/ScheduledExecutorService;Ljava/lang/Runnable;)V

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :goto_3
    const v2, 0x7f0b0203

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_4
    invoke-interface {v1}, Lmtj;->g()V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iget-object v1, v0, Lgzv;->m:Lmtj;

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_6
    iget-object v2, v0, Lgzv;->d:Lgzs;

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iget-object v2, v0, Lgzv;->l:Lmtj;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    :goto_9
    iget-object v7, v0, Lgzv;->b:Landroid/content/Context;

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    :goto_a
    new-instance v2, Lgzs;

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_b
    if-eqz v2, :cond_0

    nop

    goto/32 :goto_33

    nop

    :cond_0
    :goto_c
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_d
    iget-object v1, v0, Lgzv;->d:Lgzs;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    :goto_e
    iput-object v1, v0, Lgzv;->m:Lmtj;

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_f
    const v2, 0x7f0b0201

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_10
    iget-object v6, v0, Lgzv;->o:Lnar;

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

    nop

    :goto_11
    iget-object v4, v0, Lgzv;->k:Ljava/util/concurrent/ScheduledExecutorService;

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    move-object/from16 v20, v5

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_13
    const v1, 0xd

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

    :goto_14
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    nop

    :goto_15
    const v2, 0x7f0e0089

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_16
    invoke-direct/range {v3 .. v11}, Lgzs;-><init>(Lmtj;Lrss;Lnar;Landroid/content/Context;Ljava/util/concurrent/Executor;Landroid/net/Uri;Ljava/util/concurrent/ScheduledExecutorService;Ljava/lang/Runnable;)V

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_17
    iget-object v1, v0, Lgzv;->b:Landroid/content/Context;

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_18
    if-lez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    :cond_1
    goto/32 :goto_47

    nop

    :goto_19
    sget-object v18, Lgzv;->j:Landroid/net/Uri;

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_1a
    sget-object v9, Lgzv;->i:Landroid/net/Uri;

    nop

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    rem-int v0, v0, v1

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_1c
    invoke-virtual {v1, v4, v2, v3, v0}, Lmse;->n(IILandroid/view/View;Landroid/content/DialogInterface$OnDismissListener;)V

    goto/32 :goto_54

    nop

    nop

    nop

    :goto_1d
    const/16 v6, 0xc

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_1e
    iget-object v10, v0, Lgzv;->k:Ljava/util/concurrent/ScheduledExecutorService;

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_1f
    iget-object v4, v0, Lgzv;->l:Lmtj;

    nop

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    :goto_20
    const/16 v4, 0xd

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_21
    iget-object v1, v0, Lgzv;->n:Landroid/view/View;

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    invoke-virtual {v1}, Lgzs;->b()V

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    move-object v12, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_24
    iget-object v1, v0, Lgzv;->e:Lgzs;

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    :goto_25
    move-object v3, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    invoke-interface {v1}, Lmtj;->h()V

    goto/32 :goto_45

    nop

    nop

    nop

    :goto_27
    iput-object v2, v0, Lgzv;->d:Lgzs;

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28
    new-instance v5, Lgzi;

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_29
    const/4 v3, 0x0

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    const/16 v1, 0xb

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    :goto_2b
    iget-object v2, v0, Lgzv;->e:Lgzs;

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

    :goto_2c
    invoke-direct {v5, v0, v6}, Lgzi;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    iput-object v1, v0, Lgzv;->l:Lmtj;

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    move-object/from16 v16, v2

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    iget-object v15, v0, Lgzv;->o:Lnar;

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

    :goto_30
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_31
    iget-object v1, v0, Lgzv;->n:Landroid/view/View;

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_32
    iput-object v1, v0, Lgzv;->e:Lgzs;

    nop

    nop

    nop

    nop

    nop

    :goto_33
    goto/32 :goto_d

    nop

    nop

    :goto_34
    iget-object v3, v0, Lgzv;->c:Ljava/util/concurrent/Executor;

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_35
    iget-object v1, v0, Lgzv;->e:Lgzs;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_36
    invoke-virtual {v1, v2}, Lgzs;->g(Lgzs;)V

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    :goto_37
    invoke-virtual {v1, v2}, Lgzs;->g(Lgzs;)V

    goto/32 :goto_43

    nop

    nop

    nop

    :goto_38
    iget-object v13, v0, Lgzv;->m:Lmtj;

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_39
    iget-object v1, v0, Lgzv;->l:Lmtj;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_3a
    new-instance v11, Lgzi;

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    const v2, 0x7f140251

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    iget-object v2, v0, Lgzv;->b:Landroid/content/Context;

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :goto_3d
    iget-object v3, v0, Lgzv;->n:Landroid/view/View;

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_3e
    if-eqz v1, :cond_2

    nop

    goto/32 :goto_42

    nop

    :cond_2
    goto/32 :goto_17

    nop

    nop

    nop

    :goto_3f
    iget-object v1, v0, Lgzv;->n:Landroid/view/View;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_40
    invoke-direct {v11, v0, v1}, Lgzi;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_41
    iput-object v1, v0, Lgzv;->n:Landroid/view/View;

    nop

    nop

    nop

    nop

    :goto_42
    goto/32 :goto_3f

    nop

    nop

    nop

    :goto_43
    iget-object v1, v0, Lgzv;->d:Lgzs;

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

    :goto_44
    iget-object v2, v0, Lgzv;->d:Lgzs;

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_45
    iget-object v1, v0, Lgzv;->a:Lmse;

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    :goto_46
    invoke-static {v1}, Lrss;->j(Ljava/lang/Object;)Lrss;

    move-result-object v5

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_47
    goto/32 :goto_55

    nop

    nop

    nop

    nop

    :goto_48
    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    :goto_49
    goto/32 :goto_48

    nop

    :goto_4a
    iget-object v2, v0, Lgzv;->e:Lgzs;

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    :goto_4b
    invoke-static {v1, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

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

    :goto_4c
    move-object/from16 v0, p0

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_4d
    invoke-virtual {v1}, Lgzs;->b()V

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    const v0, 0x11

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

    :goto_4f
    check-cast v1, Lmtj;

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_50
    check-cast v1, Lmtj;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_51
    if-nez v2, :cond_3

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_52
    move-object/from16 v19, v4

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_53
    new-instance v1, Lgzs;

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    :goto_54
    return-void

    nop

    nop

    nop

    nop

    :goto_55
    goto/32 :goto_49

    nop

    nop

    :goto_56
    iget-object v8, v0, Lgzv;->c:Ljava/util/concurrent/Executor;

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
.end method

.method public final b()V
    .locals 2

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_1
    rem-int v0, v0, v1

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const/4 v1, 0x0

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_3
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_4
    add-int v0, v0, v1

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

    :goto_5
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

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

    :goto_6
    const v1, 0x7f0b0200

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_7
    const v0, 0x7f0b0202

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_c

    nop

    nop

    :goto_9
    const v0, 0x1e

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

    nop

    :goto_a
    iget-object v0, p0, Lgzv;->n:Landroid/view/View;

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_f

    nop

    :goto_c
    goto/32 :goto_a

    nop

    nop

    :goto_d
    iget-object p0, p0, Lgzv;->n:Landroid/view/View;

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_e
    return-void

    nop

    nop

    :goto_f
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    const v1, 0x2

    nop

    nop

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

    :goto_11
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto/32 :goto_d

    nop

    nop

    :goto_12
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_c

    nop

    :cond_0
    goto/32 :goto_b

    nop
.end method

.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    goto/32 :goto_4

    nop

    nop

    :goto_0
    iget-object p0, p0, Lgzv;->e:Lgzs;

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_1
    invoke-virtual {p1}, Lgzs;->d()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p0}, Lgzs;->d()V

    goto/32 :goto_3

    nop

    nop

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
    iget-object p1, p0, Lgzv;->d:Lgzs;

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

    nop

    nop
.end method
