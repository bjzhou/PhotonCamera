.class public final Lgzo;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# static fields
.field private static final g:Landroid/net/Uri;

.field private static final h:Landroid/net/Uri;


# instance fields
.field public final a:Ljava/util/concurrent/Executor;

.field public b:Lgzs;

.field public c:Lgzs;

.field public d:Z

.field public e:Z

.field public final f:Lmyz;

.field private final i:Lmse;

.field private final j:Landroid/content/Context;

.field private final k:Ljava/util/concurrent/ScheduledExecutorService;

.field private l:Lmtj;

.field private m:Lmtj;

.field private n:Landroid/view/View;

.field private final o:Lnar;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const-string v0, "https://www.gstatic.com/aiux/gca/useredu/mountain_cinematic.mp4"

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

    nop

    :goto_1
    const-string v0, "https://www.gstatic.com/aiux/gca/useredu/mountain_original.mp4"

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    :goto_3
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    sput-object v0, Lgzo;->g:Landroid/net/Uri;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_5
    sput-object v0, Lgzo;->h:Landroid/net/Uri;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_6
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

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
.end method

.method public constructor <init>(Lmse;Lnar;Lmyz;Landroid/content/Context;Ljava/util/concurrent/Executor;Ljava/util/concurrent/ScheduledExecutorService;)V
    .locals 1

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_0
    iput-boolean v0, p0, Lgzo;->e:Z

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iput-object p4, p0, Lgzo;->j:Landroid/content/Context;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2
    iput-object p5, p0, Lgzo;->a:Ljava/util/concurrent/Executor;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_4
    iput-object p1, p0, Lgzo;->i:Lmse;

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_5
    return-void

    nop

    :goto_6
    iput-boolean v0, p0, Lgzo;->d:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_7
    iput-object p3, p0, Lgzo;->f:Lmyz;

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

    :goto_8
    iput-object p2, p0, Lgzo;->o:Lnar;

    nop

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

    :goto_9
    const/4 v0, 0x0

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_a
    iput-object p6, p0, Lgzo;->k:Ljava/util/concurrent/ScheduledExecutorService;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a()V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Lmyz;->a()V

    goto/32 :goto_2

    nop

    nop

    :goto_1
    iget-object p0, p0, Lgzo;->f:Lmyz;

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
    return-void

    nop

    nop

    nop

    nop
.end method

.method public final b()V
    .locals 21

    goto/32 :goto_55

    nop

    nop

    :goto_0
    sget-object v18, Lgzo;->h:Landroid/net/Uri;

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const/16 v4, 0xe

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    :goto_2
    move-object/from16 v16, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    :goto_3
    iget-object v15, v0, Lgzo;->o:Lnar;

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_4b

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const/4 v6, 0x5

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_7
    new-instance v5, Lgzi;

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_8
    check-cast v1, Lmtj;

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    :goto_9
    new-instance v1, Lgzs;

    nop

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    :goto_a
    iget-object v7, v0, Lgzo;->j:Landroid/content/Context;

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    :goto_b
    iget-object v1, v0, Lgzo;->c:Lgzs;

    nop

    goto/32 :goto_29

    nop

    nop

    :goto_c
    invoke-virtual {v1, v2}, Lgzs;->g(Lgzs;)V

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :goto_d
    invoke-virtual {v1}, Lgzs;->b()V

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_e
    invoke-direct {v11, v0, v1}, Lgzi;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    :goto_f
    const/4 v1, 0x4

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_10
    iput-object v1, v0, Lgzo;->n:Landroid/view/View;

    nop

    nop

    :goto_11
    goto/32 :goto_51

    nop

    nop

    nop

    :goto_12
    iget-object v1, v0, Lgzo;->n:Landroid/view/View;

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

    :goto_13
    invoke-direct {v5, v0, v6}, Lgzi;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_49

    nop

    nop

    nop

    :goto_14
    iget-object v1, v0, Lgzo;->j:Landroid/content/Context;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_15
    check-cast v1, Lmtj;

    nop

    nop

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    :goto_16
    iget-object v6, v0, Lgzo;->o:Lnar;

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_17
    invoke-interface {v1}, Lmtj;->h()V

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    nop

    :goto_18
    new-instance v2, Lgzs;

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    :goto_19
    iget-object v1, v0, Lgzo;->l:Lmtj;

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_1a
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    :goto_1b
    invoke-direct/range {v3 .. v11}, Lgzs;-><init>(Lmtj;Lrss;Lnar;Landroid/content/Context;Ljava/util/concurrent/Executor;Landroid/net/Uri;Ljava/util/concurrent/ScheduledExecutorService;Ljava/lang/Runnable;)V

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_1c
    invoke-interface {v1}, Lmtj;->g()V

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    :goto_1d
    iget-object v10, v0, Lgzo;->k:Ljava/util/concurrent/ScheduledExecutorService;

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_1e
    iget-object v2, v0, Lgzo;->l:Lmtj;

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    :goto_1f
    invoke-static {v1}, Lrss;->j(Ljava/lang/Object;)Lrss;

    move-result-object v5

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_20
    iget-object v2, v0, Lgzo;->j:Landroid/content/Context;

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

    :goto_21
    move-object/from16 v20, v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    :goto_22
    move-object/from16 v19, v4

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_23
    goto/32 :goto_5

    nop

    :goto_24
    const v2, 0x7f0e0046

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    :goto_25
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_26
    sget-object v9, Lgzo;->g:Landroid/net/Uri;

    nop

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    :goto_27
    iget-object v2, v0, Lgzo;->b:Lgzs;

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    :goto_28
    iget-object v2, v0, Lgzo;->c:Lgzs;

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    :goto_29
    invoke-virtual {v1}, Lgzs;->b()V

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_2a
    iput-object v2, v0, Lgzo;->b:Lgzs;

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

    nop

    :goto_2b
    if-eqz v1, :cond_0

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_14

    nop

    nop

    nop

    :goto_2c
    const v2, 0x7f0b0104

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_2d
    iput-object v1, v0, Lgzo;->c:Lgzs;

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    :goto_2f
    iget-object v3, v0, Lgzo;->a:Ljava/util/concurrent/Executor;

    nop

    goto/32 :goto_39

    nop

    nop

    :goto_30
    invoke-static {v2}, Lrss;->j(Ljava/lang/Object;)Lrss;

    move-result-object v14

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_31
    iget-object v3, v0, Lgzo;->n:Landroid/view/View;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_32
    iput-object v1, v0, Lgzo;->l:Lmtj;

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_33
    invoke-direct/range {v12 .. v20}, Lgzs;-><init>(Lmtj;Lrss;Lnar;Landroid/content/Context;Ljava/util/concurrent/Executor;Landroid/net/Uri;Ljava/util/concurrent/ScheduledExecutorService;Ljava/lang/Runnable;)V

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_34
    iget-object v1, v0, Lgzo;->b:Lgzs;

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_35
    const v2, 0x7f140127

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_36
    const v1, 0x7

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

    nop

    nop

    :goto_37
    move-object v3, v2

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

    :goto_38
    invoke-virtual {v1, v2}, Lgzs;->g(Lgzs;)V

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    :goto_39
    iget-object v4, v0, Lgzo;->k:Ljava/util/concurrent/ScheduledExecutorService;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    const v2, 0x7f0b0101

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    :goto_3b
    move-object/from16 v0, p0

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_3c
    iget-object v1, v0, Lgzo;->m:Lmtj;

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_3d
    iget-object v1, v0, Lgzo;->b:Lgzs;

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_3e
    new-instance v11, Lgzi;

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_3f
    invoke-static {v1, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_40
    iget-object v8, v0, Lgzo;->a:Ljava/util/concurrent/Executor;

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_41
    iget-object v1, v0, Lgzo;->c:Lgzs;

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    :goto_42
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    :cond_1
    goto/32 :goto_4

    nop

    :goto_43
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_44
    iget-object v2, v0, Lgzo;->b:Lgzs;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_45
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    :goto_46
    iget-object v13, v0, Lgzo;->m:Lmtj;

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

    :goto_47
    invoke-virtual {v1, v4, v2, v3, v0}, Lmse;->n(IILandroid/view/View;Landroid/content/DialogInterface$OnDismissListener;)V

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    :goto_48
    const/4 v3, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    :goto_49
    move-object v12, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_4a
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_4b
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_4c
    iget-object v2, v0, Lgzo;->c:Lgzs;

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4d
    move-object/from16 v17, v3

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_4e
    if-nez v2, :cond_2

    nop

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    :cond_2
    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    :goto_4f
    iget-object v4, v0, Lgzo;->l:Lmtj;

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_50
    iput-object v1, v0, Lgzo;->m:Lmtj;

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

    nop

    :goto_51
    iget-object v1, v0, Lgzo;->n:Landroid/view/View;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    :goto_52
    if-eqz v2, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :cond_3
    :goto_53
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_54
    iget-object v1, v0, Lgzo;->n:Landroid/view/View;

    nop

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

    nop

    :goto_55
    const v0, 0x3

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    :goto_56
    iget-object v1, v0, Lgzo;->i:Lmse;

    nop

    nop

    goto/32 :goto_35

    nop

    nop
.end method

.method public final c()V
    .locals 2

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_0
    const v0, 0x7f0b0103

    nop

    nop

    nop

    goto/32 :goto_5

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

    nop

    :goto_2
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_3
    const v0, 0x6

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_4
    const v1, 0x7f0b0100

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_7
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_b

    nop

    nop

    :goto_9
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

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

    :goto_a
    goto/32 :goto_2

    nop

    :goto_b
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_d
    iget-object v0, p0, Lgzo;->n:Landroid/view/View;

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_e
    iget-object p0, p0, Lgzo;->n:Landroid/view/View;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_f
    const v1, 0x12

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_10
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_11
    if-lez v0, :cond_0

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_a

    nop

    :goto_12
    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    goto/32 :goto_1

    nop

    nop
.end method

.method public final d()V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Lgzo;->f:Lmyz;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Lmyz;->f()V

    goto/32 :goto_2

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop

    nop

    nop
.end method

.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Lgzo;->c:Lgzs;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    :goto_2
    invoke-virtual {p1}, Lgzs;->d()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p0}, Lgzs;->d()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iget-object p1, p0, Lgzo;->b:Lgzs;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop
.end method
