.class public final Lnif;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:Ljava/util/List;

.field public final b:Ljava/util/List;

.field public volatile c:I

.field public volatile d:Z

.field public volatile e:I

.field public volatile f:I

.field public g:Z

.field public h:Z

.field public i:Z

.field public j:Z

.field public final k:Ljava/lang/Object;

.field public l:I

.field public m:Lixe;

.field private final n:Lnie;

.field private final o:Ljava/util/List;

.field private final p:Ljava/util/List;

.field private volatile q:Landroid/view/View;

.field private volatile r:I

.field private volatile s:I

.field private volatile t:I

.field private volatile u:Z

.field private v:Z

.field private w:I

.field private x:I

.field private y:I

.field private z:Lj$/util/Optional;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    invoke-static {p1}, Landroid/text/SpannableString;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableString;

    move-result-object p1

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    new-instance v0, Lnid;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2
    invoke-direct {v0, p1}, Lnid;-><init>(Landroid/text/Spannable;)V

    goto/32 :goto_4

    nop

    nop

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

    :goto_4
    invoke-direct {p0, v0}, Lnif;-><init>(Lnie;)V

    goto/32 :goto_3

    nop

    nop
.end method

.method public constructor <init>(Lnie;)V
    .locals 3

    goto/32 :goto_0

    nop

    nop

    :goto_0
    const v0, 0x2

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_1
    new-instance p1, Ljava/util/ArrayList;

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_2
    const/16 v0, 0x1f4

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_3
    iput-boolean v0, p0, Lnif;->d:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_4
    const/4 v1, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_5
    iput-object v2, p0, Lnif;->k:Ljava/lang/Object;

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

    :goto_6
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_13

    nop

    :goto_7
    iput v0, p0, Lnif;->e:I

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

    :goto_8
    iput v0, p0, Lnif;->t:I

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_9
    new-instance p1, Ljava/util/ArrayList;

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_a
    iput v0, p0, Lnif;->s:I

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_b
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_c
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_e
    iput-boolean v0, p0, Lnif;->g:Z

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-static {}, Lj$/util/Optional;->empty()Lj$/util/Optional;

    move-result-object v2

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-static {p1}, Lj$/util/DesugarCollections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_11
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    invoke-static {p1}, Lj$/util/DesugarCollections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_15
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_16
    iput-object p1, p0, Lnif;->p:Ljava/util/List;

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_17
    iput-object p1, p0, Lnif;->o:Ljava/util/List;

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_18
    new-instance p1, Ljava/util/ArrayList;

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    iput-object v2, p0, Lnif;->z:Lj$/util/Optional;

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    iput-boolean v1, p0, Lnif;->u:Z

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1c
    return-void

    nop

    nop

    nop

    nop

    :goto_1d
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_1e
    iput v0, p0, Lnif;->f:I

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_1f
    iput-object p1, p0, Lnif;->a:Ljava/util/List;

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

    :goto_20
    iput-object p1, p0, Lnif;->n:Lnie;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_21
    iput-boolean v0, p0, Lnif;->j:Z

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_22
    const v1, 0x7

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

    :goto_23
    goto/32 :goto_14

    nop

    nop

    :goto_24
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_25
    const/4 v0, 0x0

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    invoke-static {p1}, Lj$/util/DesugarCollections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

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

    :goto_27
    invoke-static {p1}, Lj$/util/DesugarCollections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28
    iput-boolean v1, p0, Lnif;->i:Z

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_29
    new-instance v2, Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_2a
    new-instance p1, Ljava/util/ArrayList;

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_2b
    iput-object p1, p0, Lnif;->b:Ljava/util/List;

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_2d
    iput v0, p0, Lnif;->y:I

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a()Lpci;
    .locals 15

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v0, v1}, Lhoh;->p(Lhmn;)Z

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_1
    new-instance v1, Lnig;

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/16 :goto_76

    nop

    :goto_3
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_4
    if-nez v2, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    :cond_0
    goto/32 :goto_36

    nop

    nop

    nop

    :goto_5
    iget-boolean v2, p0, Lnif;->i:Z

    nop

    nop

    goto/32 :goto_74

    nop

    nop

    nop

    :goto_6
    iget v11, p0, Lnif;->l:I

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_7
    iput-object v2, v0, Lnic;->b:Ljava/util/List;

    nop

    nop

    nop

    nop

    goto/32 :goto_6d

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iget v2, p0, Lnif;->e:I

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_62

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_b
    iget-object v2, p0, Lnif;->b:Ljava/util/List;

    nop

    goto/32 :goto_32

    nop

    nop

    :goto_c
    iput-boolean v2, v3, Lnij;->g:Z

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    :goto_d
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

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

    nop

    :goto_e
    new-instance v0, Lnic;

    nop

    nop

    goto/32 :goto_6e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    iget-object v4, v3, Lnij;->b:Landroid/graphics/Paint;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    :goto_10
    int-to-long v2, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    :goto_11
    iget-boolean v12, p0, Lnif;->v:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_69

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    const/4 v0, 0x4

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

    :goto_13
    iput-object v2, v0, Lnic;->c:Ljava/lang/Runnable;

    nop

    goto/32 :goto_73

    nop

    nop

    nop

    nop

    :goto_14
    new-instance v2, Lmiv;

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_15
    iget v9, p0, Lnif;->x:I

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    :goto_16
    new-instance v3, Lnaz;

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    :goto_17
    iget-object v2, p0, Lnif;->z:Lj$/util/Optional;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_18
    iput-wide v2, v4, Lnij;->r:J

    nop

    nop

    nop

    goto/32 :goto_68

    nop

    nop

    :goto_19
    iget v2, p0, Lnif;->t:I

    nop

    nop

    nop

    goto/32 :goto_6f

    nop

    nop

    nop

    nop

    :goto_1a
    iget-object v3, v1, Lnig;->b:Ljava/util/List;

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    :goto_1b
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    iget-object v3, v3, Lnij;->c:Landroid/graphics/Paint;

    nop

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    :goto_1d
    iget-object v4, v3, Lnij;->d:Ljava/util/List;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    :goto_1e
    invoke-direct {p0, v0}, Lncl;-><init>(I)V

    goto/32 :goto_75

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    const v0, 0x1b

    nop

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    nop

    :goto_20
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :cond_1
    goto/32 :goto_9

    nop

    :goto_21
    const/16 v3, 0x14

    nop

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    :goto_22
    sget-object v1, Lhmq;->aT:Lhmn;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_23
    if-eqz v0, :cond_2

    nop

    goto/32 :goto_3

    nop

    nop

    :cond_2
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_24
    iget-object v2, v1, Lnig;->d:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_25
    new-instance p0, Lncl;

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_26
    iget-object v3, v3, Lnij;->d:Ljava/util/List;

    nop

    nop

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    nop

    nop

    :goto_27
    invoke-direct {v1, v0}, Lnig;-><init>(Landroid/view/View;)V

    goto/32 :goto_e

    nop

    nop

    :goto_28
    iget-object v4, v0, Lnic;->a:Lnij;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    :goto_29
    monitor-enter v2

    nop

    nop

    nop

    :try_start_0
    iget-object v3, v1, Lnig;->a:Ljava/util/concurrent/atomic/AtomicReference;

    nop

    nop

    nop

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    nop

    nop

    nop

    nop

    check-cast v3, Landroid/view/View;

    nop

    iget-boolean v4, v1, Lnig;->e:Z

    nop

    nop

    nop

    nop

    nop

    const/4 v5, 0x1

    nop

    const/4 v6, 0x0

    nop

    nop

    nop

    if-nez v4, :cond_4

    nop

    nop

    nop

    if-nez v3, :cond_3

    nop

    nop

    nop

    nop

    goto :goto_2a

    nop

    nop

    nop

    :cond_3
    invoke-virtual {v3}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v3

    nop

    invoke-virtual {v3, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    invoke-virtual {v3, v1}, Landroid/view/ViewTreeObserver;->addOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    iput-boolean v5, v1, Lnig;->e:Z

    nop

    nop

    new-instance v4, Lngp;

    nop

    nop

    nop

    const/4 v7, 0x2

    nop

    invoke-direct {v4, v1, v3, v7, v6}, Lngp;-><init>(Ljava/lang/Object;Ljava/lang/Object;I[B)V

    iput-object v4, v1, Lnig;->f:Lpci;

    nop

    nop

    nop

    nop

    nop

    new-instance v4, Lngp;

    nop

    const/4 v7, 0x3

    nop

    nop

    nop

    nop

    invoke-direct {v4, v1, v3, v7, v6}, Lngp;-><init>(Ljava/lang/Object;Ljava/lang/Object;I[B)V

    iput-object v4, v1, Lnig;->g:Lpci;

    nop

    monitor-exit v2

    nop

    nop

    goto :goto_2b

    nop

    nop

    :cond_4
    :goto_2a
    monitor-exit v2

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_2b
    goto/32 :goto_14

    nop

    nop

    :goto_2c
    iget-object v3, v0, Lnic;->a:Lnij;

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_2d
    iget-object v0, p0, Lnif;->q:Landroid/view/View;

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_2e
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    :goto_2f
    iput-wide v2, v4, Lnij;->s:J

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_30
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_31
    invoke-interface {v4}, Ljava/util/List;->clear()V

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_32
    iget-object v3, v0, Lnic;->a:Lnij;

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_33
    invoke-direct {v2, p0, v0, v1, v3}, Lhkf;-><init>(Lnif;Lnic;Lnig;I)V

    goto/32 :goto_71

    nop

    nop

    nop

    nop

    nop

    :goto_34
    iget v7, p0, Lnif;->c:I

    nop

    nop

    goto/32 :goto_64

    nop

    nop

    nop

    nop

    :goto_35
    new-instance v2, Lnii;

    nop

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    :goto_36
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

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

    :goto_37
    const/4 v4, 0x5

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    :goto_38
    invoke-virtual {v2, v3}, Lj$/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    :goto_39
    iget v10, p0, Lnif;->f:I

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_3a
    invoke-virtual {p0, v0}, Lnif;->b(Lnic;)V

    :goto_3b
    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    invoke-interface {v0, v1}, Lnie;->a(Landroid/content/Context;)Landroid/view/View;

    move-result-object v4

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    :goto_3d
    invoke-direct {v2, p0, v0, v5, v6}, Lnii;-><init>(Ljava/lang/Object;Ljava/lang/Object;I[B)V

    goto/32 :goto_1a

    nop

    nop

    :goto_3e
    add-int v0, v0, v1

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

    :goto_3f
    invoke-direct {v3, v0, v4}, Lnaz;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_40
    const/16 v4, 0x13

    nop

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    nop

    :goto_41
    int-to-long v2, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_42
    check-cast v0, Lfwm;

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    :goto_43
    new-instance v2, Lhkf;

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    :goto_44
    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setColor(I)V

    goto/32 :goto_17

    nop

    nop

    :goto_45
    iget-object v0, p0, Lnif;->q:Landroid/view/View;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_46
    new-instance v2, Lmiv;

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    :goto_47
    iget-boolean v14, p0, Lnif;->h:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    :goto_48
    move-object v3, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    nop

    nop

    nop

    :goto_49
    invoke-direct {v2, p0, v0, v3}, Lmiv;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/32 :goto_5b

    nop

    nop

    :goto_4a
    invoke-interface {v0}, Lfwm;->b()Lhoh;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_4b
    iput-object v2, v3, Lnij;->u:Ljava/util/List;

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_4c
    iget-object v4, v0, Lnic;->a:Lnij;

    nop

    nop

    nop

    nop

    goto/32 :goto_72

    nop

    nop

    nop

    :goto_4d
    goto/16 :goto_3b

    nop

    nop

    :goto_4e
    goto/32 :goto_63

    nop

    nop

    nop

    nop

    nop

    :goto_4f
    move-object v2, v0

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    :goto_50
    invoke-virtual {v4, v2}, Landroid/graphics/Paint;->setColor(I)V

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_51
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_52
    iget v2, p0, Lnif;->s:I

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

    :goto_53
    instance-of v1, v0, Lfwm;

    nop

    goto/32 :goto_6b

    nop

    nop

    nop

    nop

    nop

    :goto_54
    invoke-interface {v3, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_55
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    nop

    goto/32 :goto_70

    nop

    nop

    :goto_56
    if-eqz v2, :cond_5

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_3a

    nop

    nop

    :goto_57
    iget-object v6, p0, Lnif;->q:Landroid/view/View;

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :goto_58
    invoke-direct {v2, p0, v0, v4}, Lmiv;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_59
    const/4 v3, 0x7

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :goto_5a
    const v1, 0x1a

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    :goto_5b
    iget-object v3, v1, Lnig;->c:Ljava/util/List;

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5c
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5d
    iget-object v4, v0, Lnic;->a:Lnij;

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_5e
    iget-object v0, p0, Lnif;->n:Lnie;

    nop

    goto/32 :goto_65

    nop

    nop

    :goto_5f
    iget-object v2, p0, Lnif;->a:Ljava/util/List;

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_60
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_61
    throw p0

    nop

    :goto_62
    goto/32 :goto_60

    nop

    nop

    nop

    nop

    nop

    :goto_63
    iget-object v2, v1, Lnig;->a:Ljava/util/concurrent/atomic/AtomicReference;

    nop

    nop

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    :goto_64
    iget v8, p0, Lnif;->w:I

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

    nop

    :goto_65
    iget-object v1, p0, Lnif;->q:Landroid/view/View;

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

    :goto_66
    invoke-direct/range {v2 .. v14}, Lnic;-><init>(Lnig;Landroid/view/View;ILandroid/view/View;IIIIIZZZ)V

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    nop

    :goto_67
    iget-object v0, p0, Lnif;->m:Lixe;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    :goto_68
    iget-boolean v2, p0, Lnif;->u:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_69
    iget-boolean v13, p0, Lnif;->g:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    :goto_6a
    iget v2, p0, Lnif;->y:I

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_6b
    if-nez v1, :cond_6

    nop

    nop

    nop

    goto/32 :goto_76

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_42

    nop

    nop

    :goto_6c
    iget-object v3, v0, Lnic;->a:Lnij;

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    :goto_6d
    iget-object v2, p0, Lnif;->o:Ljava/util/List;

    nop

    nop

    nop

    nop

    goto/32 :goto_6c

    nop

    nop

    :goto_6e
    iget v5, p0, Lnif;->r:I

    nop

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    nop

    :goto_6f
    int-to-long v2, v2

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    :goto_70
    check-cast v2, Landroid/view/View;

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_71
    return-object v2

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    :try_start_1
    monitor-exit v2

    nop

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_61

    nop

    nop

    :goto_72
    iput-wide v2, v4, Lnij;->t:J

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_73
    iput-object v2, v3, Lnij;->h:Ljava/lang/Runnable;

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

    nop

    nop

    :goto_74
    if-nez v2, :cond_7

    nop

    nop

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_75
    return-object p0

    nop

    nop

    nop

    :goto_76
    goto/32 :goto_67

    nop

    nop
.end method

.method public final b(Lnic;)V
    .locals 3

    goto/32 :goto_0

    nop

    nop

    :goto_0
    const v0, 0x14

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_1
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_2
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :cond_0
    goto/32 :goto_2

    nop

    :goto_5
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_6
    throw p0

    nop

    :goto_7
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_8
    monitor-enter v0

    nop

    nop

    nop

    nop

    :try_start_0
    iget-boolean v1, p0, Lnif;->j:Z

    nop

    nop

    nop

    nop

    if-nez v1, :cond_3

    nop

    nop

    nop

    nop

    nop

    iget-object v1, p0, Lnif;->p:Ljava/util/List;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    nop

    nop

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    nop

    nop

    if-eqz v2, :cond_2

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    check-cast v2, Ljava/util/function/Supplier;

    nop

    nop

    nop

    nop

    invoke-interface {v2}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    nop

    check-cast v2, Ljava/lang/Boolean;

    nop

    nop

    nop

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    nop

    if-nez v2, :cond_1

    nop

    goto :goto_9

    nop

    nop

    nop

    nop

    nop

    :cond_2
    iget-object p0, p0, Lnif;->m:Lixe;

    nop

    nop

    nop

    invoke-virtual {p0, p1}, Lixe;->a(Lixf;)Lpci;

    monitor-exit v0

    nop

    nop

    nop

    nop

    return-void

    nop

    nop

    nop

    :cond_3
    :goto_9
    monitor-exit v0

    nop

    nop

    return-void

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    nop

    nop

    nop

    monitor-exit v0

    nop

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_a
    const v1, 0x15

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_b
    iget-object v0, p0, Lnif;->k:Ljava/lang/Object;

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_c
    goto/32 :goto_3

    nop

    nop
.end method

.method public final c(Landroid/view/View;I)V
    .locals 0

    goto/32 :goto_3

    nop

    nop

    :goto_0
    const/4 p1, 0x1

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

    :goto_1
    iput p2, p0, Lnif;->x:I

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_2
    iput p1, p0, Lnif;->r:I

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_3
    iput-object p1, p0, Lnif;->q:Landroid/view/View;

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

    :goto_4
    return-void

    nop

    nop

    nop
.end method

.method public final d(Ljava/util/function/Supplier;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Lnif;->p:Ljava/util/List;

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

    :goto_1
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop
.end method

.method public final e(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    :goto_0
    return-void

    nop

    :goto_1
    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_2
    iget-object p0, p0, Lnif;->o:Ljava/util/List;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_3
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final f(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    .locals 3

    goto/32 :goto_8

    nop

    nop

    :goto_0
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_4

    nop

    :goto_2
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_3
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_9

    nop

    nop

    :goto_5
    const v1, 0x1e

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_6
    invoke-direct {v0, p1, p2, v1, v2}, Lnib;-><init>(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;J)V

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const-wide/16 v1, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_8
    const v0, 0x14

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_9
    new-instance v0, Lnib;

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    :cond_0
    goto/32 :goto_3

    nop

    :goto_b
    add-int v0, v0, v1

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_c
    return-void

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    iget-object p0, p0, Lnif;->a:Ljava/util/List;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method

.method public final g(Landroid/view/View;I)V
    .locals 0

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput p1, p0, Lnif;->r:I

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const/4 p1, 0x4

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    :goto_3
    iput p2, p0, Lnif;->w:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_4
    iput-object p1, p0, Lnif;->q:Landroid/view/View;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop
.end method

.method public final h()V
    .locals 1

    goto/32 :goto_2

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    nop

    :goto_1
    iput v0, p0, Lnif;->c:I

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

    :goto_2
    const/4 v0, 0x2

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop
.end method

.method public final i()V
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    :goto_1
    iput v0, p0, Lnif;->c:I

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

    :goto_2
    const/4 v0, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop
.end method

.method public final j(Landroid/view/View;I)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_0
    iput p2, p0, Lnif;->w:I

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_1
    const/4 p1, 0x3

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_2
    iput-object p1, p0, Lnif;->q:Landroid/view/View;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    nop

    :goto_4
    iput p1, p0, Lnif;->r:I

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public final k()V
    .locals 2

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    const v0, 0x15

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iput v0, p0, Lnif;->y:I

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_2
    if-lez v0, :cond_0

    nop

    goto/32 :goto_8

    nop

    :cond_0
    goto/32 :goto_7

    nop

    :goto_3
    const v1, 0x12

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_4
    const v1, 0x7f0401d1

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_5
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_9

    nop

    nop

    :goto_9
    iget-object v0, p0, Lnif;->q:Landroid/view/View;

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_a
    invoke-static {v0, v1}, Lrgw;->f(Landroid/view/View;I)I

    move-result v0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_b
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_8

    nop

    nop

    :goto_d
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop
.end method

.method public final l()V
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-boolean v0, p0, Lnif;->v:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1
    const/4 v0, 0x1

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
.end method

.method public final m()V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    const/4 v0, 0x1

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    iput-boolean v0, p0, Lnif;->u:Z

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop
.end method

.method public final n()V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    const/16 v0, 0x190

    nop

    nop

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
    iput v0, p0, Lnif;->s:I

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop
.end method

.method public final o()V
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput v0, p0, Lnif;->t:I

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

    :goto_1
    const/16 v0, 0x12c

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

    nop

    nop
.end method

.method public final p(I)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    :goto_0
    invoke-static {p1}, Lj$/util/Optional;->of(Ljava/lang/Object;)Lj$/util/Optional;

    move-result-object p1

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    :goto_2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iput-object p1, p0, Lnif;->z:Lj$/util/Optional;

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
.end method

.method public final q(Landroid/view/View;)V
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    :goto_1
    const/4 v0, 0x0

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

    :goto_2
    invoke-virtual {p0, p1, v0}, Lnif;->c(Landroid/view/View;I)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final r(Landroid/view/View;)V
    .locals 0

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const/4 p1, 0x2

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_1
    const/4 p1, 0x0

    nop

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

    :goto_2
    return-void

    nop

    nop

    :goto_3
    iput-object p1, p0, Lnif;->q:Landroid/view/View;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iput p1, p0, Lnif;->r:I

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_5
    iput p1, p0, Lnif;->x:I

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop
.end method
