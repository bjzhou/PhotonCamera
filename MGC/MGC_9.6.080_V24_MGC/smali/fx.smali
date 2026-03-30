.class public Lfx;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lduf;


# static fields
.field private static final k:[I


# instance fields
.field public final a:Landroid/content/Context;

.field public b:Lfv;

.field public final c:Ljava/util/ArrayList;

.field public final d:Ljava/util/ArrayList;

.field e:Ljava/lang/CharSequence;

.field f:Landroid/graphics/drawable/Drawable;

.field g:Landroid/view/View;

.field public h:Z

.field public i:Lfz;

.field public j:Z

.field private final l:Landroid/content/res/Resources;

.field private m:Z

.field private final n:Z

.field private final o:Ljava/util/ArrayList;

.field private p:Z

.field private final q:Ljava/util/ArrayList;

.field private r:Z

.field private s:I

.field private t:Z

.field private u:Z

.field private v:Z

.field private final w:Ljava/util/ArrayList;

.field private final x:Ljava/util/concurrent/CopyOnWriteArrayList;

.field private y:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    :array_0
    .array-data 4
        0x1
        0x4
        0x5
        0x3
        0x2
        0x0
    .end array-data

    :goto_1
    sput-object v0, Lfx;->k:[I

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_2
    new-array v0, v0, [I

    nop

    nop

    nop

    nop

    nop

    fill-array-data v0, :array_0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_3
    const/4 v0, 0x6

    nop

    goto/32 :goto_2

    nop

    nop

    nop
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_27

    nop

    :goto_1
    rem-int v0, v0, v1

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_2
    iput-object v1, p0, Lfx;->l:Landroid/content/res/Resources;

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_3
    iput-boolean v2, p0, Lfx;->r:Z

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_4
    iput-object v2, p0, Lfx;->c:Ljava/util/ArrayList;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    :goto_5
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    goto/32 :goto_f

    nop

    nop

    :goto_6
    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iput-boolean v2, p0, Lfx;->p:Z

    nop

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
    iget v1, v1, Landroid/content/res/Configuration;->keyboard:I

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_9
    new-instance v3, Ljava/util/ArrayList;

    nop

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

    :goto_a
    add-int v0, v0, v1

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

    :goto_b
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    if-nez p1, :cond_1

    nop

    nop

    goto/32 :goto_1a

    nop

    :cond_1
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_d
    if-ne v1, v2, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    :cond_2
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

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

    :goto_f
    iput-object v1, p0, Lfx;->w:Ljava/util/ArrayList;

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_10
    iput-boolean v0, p0, Lfx;->t:Z

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    :goto_11
    new-instance v3, Ljava/util/ArrayList;

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_12
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_13
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->shouldShowMenuShortcutsWhenKeyboardPresent()Z

    move-result p1

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    iput-object v1, p0, Lfx;->x:Ljava/util/concurrent/CopyOnWriteArrayList;

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    new-instance v1, Ljava/util/ArrayList;

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_17
    iput v0, p0, Lfx;->s:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_18
    const/4 v2, 0x1

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_19
    move v0, v2

    nop

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_20

    nop

    nop

    :goto_1b
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_1c
    iput-object v3, p0, Lfx;->d:Ljava/util/ArrayList;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_1d
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_1f
    new-instance v2, Ljava/util/ArrayList;

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_20
    iput-boolean v0, p0, Lfx;->n:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_21
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    iput-object v2, p0, Lfx;->o:Ljava/util/ArrayList;

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_23
    iput-boolean v0, p0, Lfx;->h:Z

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_24
    const/4 v0, 0x0

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

    :goto_25
    iput-boolean v0, p0, Lfx;->y:Z

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_26
    iput-object v3, p0, Lfx;->q:Ljava/util/ArrayList;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_27
    goto/32 :goto_1e

    nop

    nop

    :goto_28
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_29
    const v0, 0x15

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    :goto_2a
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

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

    :goto_2b
    new-instance v2, Ljava/util/ArrayList;

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_2c
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_2d
    iput-object p1, p0, Lfx;->a:Landroid/content/Context;

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    goto/32 :goto_28

    nop

    nop

    :goto_30
    iput-boolean v0, p0, Lfx;->u:Z

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :goto_31
    const v1, 0x1

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_32
    iput-boolean v0, p0, Lfx;->v:Z

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop
.end method

.method private final ad49e23a9e5e6fdec23353cfc00ae3a3m(IZ)V
    .locals 1

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto :goto_4

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_a

    nop

    nop

    :goto_2
    if-nez p2, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    :cond_0
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p0, p1}, Lfx;->l(Z)V

    :goto_4
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    if-gez p1, :cond_1

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

    :cond_1
    goto/32 :goto_b

    nop

    nop

    :goto_6
    if-ge p1, v0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

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

    :goto_8
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto/32 :goto_2

    nop

    nop

    :goto_9
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_a
    iget-object v0, p0, Lfx;->c:Ljava/util/ArrayList;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_b
    iget-object v0, p0, Lfx;->c:Ljava/util/ArrayList;

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const/4 p1, 0x1

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


# virtual methods
.method public final A(Landroid/view/MenuItem;Lgi;I)Z
    .locals 6

    goto/32 :goto_50

    nop

    nop

    nop

    :goto_0
    return v1

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_27

    nop

    nop

    :goto_2
    if-nez v5, :cond_0

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    :cond_0
    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    nop

    :goto_3
    and-int/lit8 p3, p3, 0x4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p0, v0}, Lfx;->i(Z)V

    :goto_5
    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {p1, v5}, Lfz;->l(Lgp;)V

    :goto_7
    goto/32 :goto_39

    nop

    nop

    nop

    nop

    :goto_8
    goto/16 :goto_26

    nop

    :goto_9
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_a
    check-cast v4, Lgi;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_b
    invoke-virtual {v2}, Ldvu;->c()Z

    move-result v4

    nop

    goto/32 :goto_62

    nop

    nop

    nop

    nop

    nop

    :goto_c
    if-nez v4, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5c

    nop

    :cond_1
    goto/32 :goto_5b

    nop

    nop

    nop

    :goto_d
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    :goto_f
    and-int/lit8 p1, p3, 0x1

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-direct {v5, p3, p0, p1}, Lgp;-><init>(Landroid/content/Context;Lfx;Lfz;)V

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_11
    if-eqz v5, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    :cond_2
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_12
    goto/16 :goto_26

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    if-nez v2, :cond_3

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_15
    invoke-virtual {p1}, Lfz;->hasSubMenu()Z

    move-result v5

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

    :goto_16
    if-eqz v4, :cond_4

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    or-int/2addr v1, p1

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    nop

    nop

    :goto_18
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    :goto_19
    goto :goto_1c

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_55

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-virtual {p3}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p3

    nop

    :goto_1c
    goto/32 :goto_1f

    nop

    nop

    :goto_1d
    goto :goto_2c

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    nop

    goto/32 :goto_2e

    nop

    nop

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

    :goto_21
    goto/32 :goto_51

    nop

    nop

    nop

    nop

    :goto_22
    iget-object v4, p0, Lfx;->x:Ljava/util/concurrent/CopyOnWriteArrayList;

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    iget-object v2, p1, Lfz;->p:Ldvu;

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    :goto_24
    invoke-virtual {p0, v3}, Lfx;->i(Z)V

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    :goto_25
    if-nez v1, :cond_5

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :cond_5
    :goto_26
    goto/32 :goto_0

    nop

    nop

    :goto_27
    invoke-virtual {p0, v3}, Lfx;->i(Z)V

    :goto_28
    goto/32 :goto_29

    nop

    nop

    :goto_29
    return v0

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    goto/32 :goto_57

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    move v4, v0

    nop

    nop

    :goto_2c
    goto/32 :goto_56

    nop

    nop

    nop

    :goto_2d
    invoke-virtual {p1}, Lfz;->n()Z

    move-result v1

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    if-nez v2, :cond_6

    nop

    nop

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_2f
    if-nez p2, :cond_7

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_64

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_30
    check-cast v2, Ljava/lang/ref/WeakReference;

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

    nop

    :goto_31
    invoke-virtual {p1}, Lfz;->hasSubMenu()Z

    move-result p3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    :goto_32
    const v1, 0xe

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_33
    goto :goto_3e

    nop

    nop

    nop

    nop

    nop

    :goto_34
    goto/32 :goto_3d

    nop

    nop

    :goto_35
    return v3

    nop

    nop

    :goto_36
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_37
    invoke-virtual {p0, v3}, Lfx;->i(Z)V

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_38
    if-eqz p3, :cond_8

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_39
    iget-object p1, p1, Lfz;->k:Lgp;

    nop

    goto/32 :goto_44

    nop

    nop

    :goto_3a
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    :goto_3b
    invoke-virtual {p3}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result p3

    nop

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    move v4, v3

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    move p2, v0

    nop

    :goto_3e
    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    iget-object p3, p0, Lfx;->x:Ljava/util/concurrent/CopyOnWriteArrayList;

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_40
    if-lez v0, :cond_9

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_20

    nop

    :goto_41
    new-instance v5, Lgp;

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_42
    goto/16 :goto_60

    nop

    nop

    nop

    nop

    nop

    :goto_43
    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_44
    if-nez v4, :cond_a

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_49

    nop

    nop

    nop

    nop

    :goto_45
    return v1

    nop

    :goto_46
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_47
    if-eqz p3, :cond_b

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :cond_b
    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    :goto_48
    move p2, v0

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_49
    invoke-virtual {v2, p1}, Ldvu;->b(Landroid/view/SubMenu;)V

    :goto_4a
    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4b
    if-eqz v1, :cond_c

    nop

    nop

    nop

    nop

    goto/32 :goto_54

    nop

    :cond_c
    goto/32 :goto_53

    nop

    nop

    :goto_4c
    invoke-virtual {v4, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_4d
    const/4 v3, 0x1

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_4e
    invoke-interface {v4, p1}, Lgi;->f(Lgp;)Z

    move-result p2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4f
    iget-object p3, p0, Lfx;->x:Ljava/util/concurrent/CopyOnWriteArrayList;

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_50
    const v0, 0x14

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :goto_51
    check-cast p1, Lfz;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_65

    nop

    nop

    nop

    nop

    :goto_52
    if-nez p1, :cond_d

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    :cond_d
    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    nop

    :goto_53
    goto/16 :goto_28

    nop

    nop

    nop

    :goto_54
    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_55
    if-eqz p2, :cond_e

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :cond_e
    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_56
    invoke-virtual {p1}, Lfz;->m()Z

    move-result v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_57
    goto/32 :goto_21

    nop

    :goto_58
    if-eqz v1, :cond_f

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :cond_f
    goto/32 :goto_12

    nop

    nop

    nop

    :goto_59
    if-nez p3, :cond_10

    nop

    goto/32 :goto_43

    nop

    :cond_10
    goto/32 :goto_48

    nop

    nop

    :goto_5a
    invoke-virtual {p1}, Lfz;->isEnabled()Z

    move-result v1

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5b
    goto/16 :goto_46

    nop

    nop

    nop

    nop

    :goto_5c
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5d
    iget-object p3, p0, Lfx;->a:Landroid/content/Context;

    nop

    goto/32 :goto_41

    nop

    nop

    :goto_5e
    invoke-virtual {p1}, Lfz;->expandActionView()Z

    move-result p1

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

    :goto_5f
    goto/16 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_60
    goto/32 :goto_61

    nop

    nop

    nop

    :goto_61
    or-int/2addr v1, p2

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_62
    if-nez v4, :cond_11

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :cond_11
    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_63
    if-nez p1, :cond_12

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    :cond_12
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_64
    invoke-interface {p2, p1}, Lgi;->f(Lgp;)Z

    move-result p2

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    :goto_65
    const/4 v0, 0x0

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    nop
.end method

.method final B()V
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_0
    iput-boolean v0, p0, Lfx;->r:Z

    nop

    goto/32 :goto_3

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
    const/4 v0, 0x1

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p0, v0}, Lfx;->l(Z)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method final C()V
    .locals 1

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-boolean v0, p0, Lfx;->p:Z

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0, v0}, Lfx;->l(Z)V

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop

    :goto_3
    const/4 v0, 0x1

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method

.method public final D()V
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput v0, p0, Lfx;->s:I

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

    nop

    :goto_2
    return-void

    nop
.end method

.method public a()Lfx;
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-object p0

    nop
.end method

.method public final add(I)Landroid/view/MenuItem;
    .locals 1

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_1
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_3
    iget-object v0, p0, Lfx;->l:Landroid/content/res/Resources;

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
    invoke-virtual {p0, v0, v0, v0, p1}, Lfx;->c(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object p0

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop
.end method

.method public final add(IIII)Landroid/view/MenuItem;
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v0, p4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p4

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-object p0

    nop

    nop

    nop

    nop

    :goto_2
    iget-object v0, p0, Lfx;->l:Landroid/content/res/Resources;

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

    :goto_3
    invoke-virtual {p0, p1, p2, p3, p4}, Lfx;->c(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop
.end method

.method public final add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lfx;->c(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object p0

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    return-object p0

    nop

    nop

    nop

    nop
.end method

.method public final add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    :goto_0
    const/4 v0, 0x0

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_1
    return-object p0

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p0, v0, v0, v0, p1}, Lfx;->c(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object p0

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

.method public final addIntentOptions(IIILandroid/content/ComponentName;[Landroid/content/Intent;Landroid/content/Intent;I[Landroid/view/MenuItem;)I
    .locals 7

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_0
    move-object v5, v4

    nop

    goto/32 :goto_3a

    nop

    nop

    :goto_1
    iget v4, p7, Landroid/content/pm/ResolveInfo;->specificIndex:I

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/16 :goto_30

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const/4 v1, 0x0

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

    :goto_5
    iget-object v6, p7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_6
    if-lt v1, v2, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const v0, 0x14

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_8
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v2

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

    :goto_9
    and-int/lit8 p7, p7, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_a
    new-instance v4, Landroid/content/ComponentName;

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_b
    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_d
    move-object v4, p6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    goto :goto_11

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_22

    nop

    nop

    :goto_10
    invoke-virtual {p0, p1}, Lfx;->removeGroup(I)V

    :goto_11
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_12
    invoke-virtual {p7, v0}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_13
    iget-object v0, p0, Lfx;->a:Landroid/content/Context;

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    if-gez v3, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    :cond_1
    goto/32 :goto_1c

    nop

    nop

    :goto_15
    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    :goto_16
    invoke-virtual {v0, p4, p5, p6, v1}, Landroid/content/pm/PackageManager;->queryIntentActivityOptions(Landroid/content/ComponentName;[Landroid/content/Intent;Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p4

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_17
    add-int/lit8 v1, v1, 0x1

    nop

    nop

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

    :goto_18
    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_19
    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_1a
    if-nez p8, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    :cond_2
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_1b
    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_1c
    iget p7, p7, Landroid/content/pm/ResolveInfo;->specificIndex:I

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    goto :goto_21

    nop

    nop

    :goto_1e
    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :goto_1f
    if-nez p4, :cond_3

    nop

    nop

    goto/32 :goto_3

    nop

    nop

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

    :goto_20
    aget-object v4, p5, v4

    nop

    nop

    nop

    :goto_21
    goto/32 :goto_39

    nop

    nop

    nop

    :goto_22
    return v2

    nop

    nop

    nop

    :goto_23
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    iget v3, p7, Landroid/content/pm/ResolveInfo;->specificIndex:I

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    iput-object v3, v5, Lfz;->e:Landroid/content/Intent;

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_26
    if-eqz p7, :cond_4

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    :cond_4
    goto/32 :goto_10

    nop

    nop

    :goto_27
    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_28
    rem-int v0, v0, v1

    nop

    goto/32 :goto_34

    nop

    nop

    :goto_29
    aput-object v4, p8, p7

    nop

    nop

    :goto_2a
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    invoke-virtual {p7, v0}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    if-ltz v4, :cond_5

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_d

    nop

    nop

    :goto_2d
    const v1, 0xe

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    :goto_2e
    iget-object v5, p7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    move v2, v1

    nop

    nop

    nop

    nop

    nop

    :goto_30
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_31
    invoke-virtual {v3, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_32
    iget v4, p7, Landroid/content/pm/ResolveInfo;->specificIndex:I

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

    :goto_33
    check-cast p7, Landroid/content/pm/ResolveInfo;

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_34
    if-lez v0, :cond_6

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_35

    nop

    :goto_35
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_36
    goto/32 :goto_13

    nop

    nop

    :goto_37
    invoke-interface {p4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p7

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    :goto_38
    new-instance v3, Landroid/content/Intent;

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_39
    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    check-cast v5, Lfz;

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_3b
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_3c
    invoke-virtual {p0, p1, p2, p3, v4}, Lfx;->c(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v4

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop
.end method

.method public final addSubMenu(I)Landroid/view/SubMenu;
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
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

    :goto_1
    iget-object v0, p0, Lfx;->l:Landroid/content/res/Resources;

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_2
    invoke-virtual {p0, v0, v0, v0, p1}, Lfx;->addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;

    move-result-object p0

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_4
    return-object p0

    nop

    nop

    nop
.end method

.method public final addSubMenu(IIII)Landroid/view/SubMenu;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    iget-object v0, p0, Lfx;->l:Landroid/content/res/Resources;

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
    invoke-virtual {p0, p1, p2, p3, p4}, Lfx;->addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {v0, p4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_3
    return-object p0

    nop

    nop
.end method

.method public final addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lfx;->c(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object p1

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

    :goto_1
    iget-object p3, p0, Lfx;->a:Landroid/content/Context;

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p1, p2}, Lfz;->l(Lgp;)V

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_3
    check-cast p1, Lfz;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    return-object p2

    nop

    nop

    nop

    nop

    :goto_5
    invoke-direct {p2, p3, p0, p1}, Lgp;-><init>(Landroid/content/Context;Lfx;Lfz;)V

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_6
    new-instance p2, Lgp;

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop
.end method

.method public final addSubMenu(Ljava/lang/CharSequence;)Landroid/view/SubMenu;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    invoke-virtual {p0, v0, v0, v0, p1}, Lfx;->addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;

    move-result-object p0

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
    return-object p0

    nop

    nop
.end method

.method final b(ILandroid/view/KeyEvent;)Lfz;
    .locals 10

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    const v0, 0xd

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

    :goto_1
    const/4 v5, 0x0

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_2
    iget-char v7, v6, Lfz;->f:C

    nop

    nop

    :goto_3
    goto/32 :goto_12

    nop

    nop

    :goto_4
    return-object v6

    nop

    nop

    :goto_5
    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    if-nez p0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    :cond_0
    goto/32 :goto_16

    nop

    nop

    :goto_7
    invoke-virtual {p0}, Lfx;->x()Z

    move-result p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_8
    and-int/lit8 v8, v1, 0x2

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_b
    const/16 v7, 0x43

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_c
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    :goto_d
    if-eq v7, v8, :cond_1

    nop

    goto/32 :goto_21

    nop

    :cond_1
    goto/32 :goto_8

    nop

    nop

    :goto_e
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_f
    if-eq v7, v8, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    :cond_2
    goto/32 :goto_35

    nop

    nop

    :goto_10
    goto :goto_5

    nop

    nop

    :goto_11
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    iget-object v8, v3, Landroid/view/KeyCharacterMap$KeyData;->meta:[C

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_13
    return-object v2

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :goto_15
    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_16
    iget-char v7, v6, Lfz;->h:C

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    invoke-virtual {p0, v0, p1, p2}, Lfx;->j(Ljava/util/List;ILandroid/view/KeyEvent;)V

    goto/32 :goto_e

    nop

    nop

    :goto_18
    new-instance v3, Landroid/view/KeyCharacterMap$KeyData;

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

    :goto_19
    goto/16 :goto_3

    nop

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    return-object v2

    nop

    nop

    :goto_1c
    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    iget-object v8, v3, Landroid/view/KeyCharacterMap$KeyData;->meta:[C

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_1e
    const v1, 0x17

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_20
    if-eqz v8, :cond_3

    nop

    goto/32 :goto_11

    nop

    nop

    :cond_3
    :goto_21
    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    aget-char v8, v8, v5

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    check-cast p0, Lfz;

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    :goto_24
    if-ne p1, v7, :cond_4

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_10

    nop

    nop

    nop

    :goto_25
    const/4 v4, 0x1

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_26
    move v4, v5

    nop

    nop

    :goto_27
    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29
    if-eq p2, v4, :cond_5

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_34

    nop

    nop

    :goto_2a
    const/4 v9, 0x2

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    :goto_2b
    iget-object v0, p0, Lfx;->w:Ljava/util/ArrayList;

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    aget-char v8, v8, v9

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

    nop

    :goto_2d
    rem-int v0, v0, v1

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

    :goto_2e
    check-cast v6, Lfz;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_2f
    if-lez v0, :cond_6

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    :cond_6
    goto/32 :goto_9

    nop

    :goto_30
    goto/32 :goto_a

    nop

    :goto_31
    add-int/lit8 v4, v4, 0x1

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_32
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_33
    if-nez v1, :cond_7

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_34
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_35
    and-int/lit8 v8, v1, 0x2

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    :goto_36
    if-nez p0, :cond_8

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    :cond_8
    goto/32 :goto_38

    nop

    nop

    nop

    :goto_37
    if-lt v4, p2, :cond_9

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    :cond_9
    goto/32 :goto_28

    nop

    nop

    :goto_38
    const/16 v8, 0x8

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_39
    invoke-direct {v3}, Landroid/view/KeyCharacterMap$KeyData;-><init>()V

    goto/32 :goto_3e

    nop

    nop

    :goto_3a
    return-object p0

    nop

    nop

    nop

    :goto_3b
    goto/32 :goto_7

    nop

    nop

    :goto_3c
    if-nez v8, :cond_a

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    :cond_a
    :goto_3d
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_3e
    invoke-virtual {p2, v3}, Landroid/view/KeyEvent;->getKeyData(Landroid/view/KeyCharacterMap$KeyData;)Z

    goto/32 :goto_1f

    nop

    nop

    :goto_3f
    goto/16 :goto_27

    nop

    nop

    nop

    :goto_40
    goto/32 :goto_13

    nop

    nop

    nop

    :goto_41
    if-eq v7, v8, :cond_b

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    :cond_b
    goto/32 :goto_b

    nop

    nop

    :goto_42
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    goto/32 :goto_17

    nop

    nop

    nop

    nop
.end method

.method protected final c(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 11

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_1
    or-int/2addr v0, v1

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    check-cast p4, Lfz;

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_3
    shl-int/lit8 v0, v0, 0x10

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_4
    int-to-char v1, p3

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const v0, 0x19

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_6
    const/4 v1, 0x6

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_7
    const/4 p2, 0x0

    nop

    nop

    :goto_8
    goto/32 :goto_16

    nop

    nop

    :goto_9
    move v5, p2

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_a
    iget-object p1, p0, Lfx;->c:Ljava/util/ArrayList;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_b
    aget v0, v1, v0

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

    nop

    :goto_c
    new-instance v10, Lfz;

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
    add-int/2addr p2, p3

    nop

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

    :goto_e
    move-object v8, p4

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_f
    move-object v3, p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-direct/range {v2 .. v9}, Lfz;-><init>(Lfx;IIIILjava/lang/CharSequence;I)V

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_11
    return-object v10

    nop

    :goto_12
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    invoke-virtual {p0, p3}, Lfx;->l(Z)V

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_14
    move v4, p1

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

    :goto_15
    move v6, p3

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

    nop

    :goto_16
    invoke-virtual {p1, p2, v10}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_17
    if-le p4, v0, :cond_0

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

    :cond_0
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_18
    const/4 p3, 0x1

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_19
    sget-object v1, Lfx;->k:[I

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    goto/16 :goto_8

    nop

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_1d
    move-object v2, v10

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_1e
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    if-gez p2, :cond_1

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    const v1, 0x6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_21
    iget p4, p4, Lfz;->c:I

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_22
    if-lt v0, v1, :cond_2

    nop

    goto/32 :goto_12

    nop

    :cond_2
    goto/32 :goto_19

    nop

    nop

    :goto_23
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p4

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

    :goto_24
    add-int v0, v0, v1

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

    :goto_25
    move v7, v0

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_26
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    nop

    nop

    nop

    :goto_27
    goto/32 :goto_30

    nop

    nop

    nop

    :goto_28
    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_29
    goto/32 :goto_32

    nop

    nop

    :goto_2a
    const-string p1, "order does not contain a valid category."

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_2b
    if-lez v0, :cond_3

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_28

    nop

    :goto_2c
    throw p0

    nop

    nop

    nop

    :goto_2d
    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    if-gez v0, :cond_4

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    :cond_4
    goto/32 :goto_6

    nop

    nop

    :goto_2f
    iget v9, p0, Lfx;->s:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_30
    add-int/lit8 p2, p2, -0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_31
    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_32
    shr-int/lit8 v0, p3, 0x10

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop
.end method

.method public final clear()V
    .locals 1

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_0
    const/4 v0, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_1
    iget-object v0, p0, Lfx;->c:Ljava/util/ArrayList;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_3
    iget-object v0, p0, Lfx;->i:Lfz;

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p0, v0}, Lfx;->l(Z)V

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_5
    return-void

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {p0, v0}, Lfx;->t(Lfz;)Z

    :goto_7
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_8
    if-nez v0, :cond_0

    nop

    goto/32 :goto_7

    nop

    nop

    :cond_0
    goto/32 :goto_6

    nop

    nop

    nop
.end method

.method public final clearHeader()V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    :goto_0
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p0, v0}, Lfx;->l(Z)V

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_3
    iput-object v0, p0, Lfx;->g:Landroid/view/View;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_4
    iput-object v0, p0, Lfx;->e:Ljava/lang/CharSequence;

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_5
    iput-object v0, p0, Lfx;->f:Landroid/graphics/drawable/Drawable;

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_6
    const/4 v0, 0x0

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop
.end method

.method public final close()V
    .locals 1

    goto/32 :goto_1

    nop

    nop

    :goto_0
    return-void

    nop

    :goto_1
    const/4 v0, 0x1

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
    invoke-virtual {p0, v0}, Lfx;->i(Z)V

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method protected d()Ljava/lang/String;
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    return-object p0

    nop

    nop

    nop

    nop

    :goto_1
    const-string p0, "android:menu:actionviewstates"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public final e()Ljava/util/ArrayList;
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Lfx;->k()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iget-object p0, p0, Lfx;->q:Ljava/util/ArrayList;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return-object p0

    nop

    nop
.end method

.method public final f()Ljava/util/ArrayList;
    .locals 5

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_0
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    rem-int v0, v0, v1

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_3
    const v0, 0x5

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_5
    iget-boolean v0, p0, Lfx;->p:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_6
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_7
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {v3}, Lfz;->isVisible()Z

    move-result v4

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_9
    goto :goto_15

    nop

    nop

    :goto_a
    goto/32 :goto_10

    nop

    nop

    :goto_b
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    :cond_0
    goto/32 :goto_1b

    nop

    :goto_c
    iget-object v3, p0, Lfx;->c:Ljava/util/ArrayList;

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_d
    iget-object p0, p0, Lfx;->o:Ljava/util/ArrayList;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_e
    const/4 v0, 0x1

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

    :goto_f
    iget-object v4, p0, Lfx;->o:Ljava/util/ArrayList;

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    iput-boolean v1, p0, Lfx;->p:Z

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_11
    const v1, 0x8

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_12
    const/4 v1, 0x0

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_13
    iput-boolean v0, p0, Lfx;->r:Z

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    move v2, v1

    nop

    :goto_15
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_17
    iget-object v0, p0, Lfx;->o:Ljava/util/ArrayList;

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    if-nez v4, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :cond_1
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_19
    check-cast v3, Lfz;

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

    :goto_1a
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_25

    nop

    :goto_1c
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    if-eqz v0, :cond_2

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_1f
    if-lt v2, v0, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    :cond_3
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    iget-object v0, p0, Lfx;->c:Ljava/util/ArrayList;

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_21
    add-int/lit8 v2, v2, 0x1

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

    :goto_22
    iget-object p0, p0, Lfx;->o:Ljava/util/ArrayList;

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_23
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    return-object p0

    nop

    nop

    nop

    nop

    :goto_25
    goto/32 :goto_4

    nop

    nop
.end method

.method public final findItem(I)Landroid/view/MenuItem;
    .locals 4

    goto/32 :goto_6

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
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    check-cast v2, Lfz;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_1

    nop

    nop

    :goto_4
    goto/32 :goto_19

    nop

    nop

    :goto_5
    if-eqz v2, :cond_0

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :cond_0
    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_6
    const v0, 0x1c

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_7
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_4

    nop

    :goto_9
    if-lez v0, :cond_1

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_3

    nop

    :goto_a
    goto/16 :goto_1f

    nop

    nop

    :goto_b
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_c
    add-int/lit8 v1, v1, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_d
    if-lt v1, v0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :cond_2
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_f
    if-eq v3, p1, :cond_3

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_13

    nop

    nop

    nop

    :goto_10
    const v1, 0x16

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

    :goto_11
    if-nez v3, :cond_4

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    :cond_4
    goto/32 :goto_21

    nop

    nop

    nop

    :goto_12
    rem-int v0, v0, v1

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

    :goto_13
    return-object v2

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_15
    invoke-interface {v2, p1}, Landroid/view/SubMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

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

    :goto_16
    const/4 p0, 0x0

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

    :goto_17
    return-object v2

    nop

    nop

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_c

    nop

    nop

    :goto_19
    invoke-virtual {p0}, Lfx;->size()I

    move-result v0

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_1a
    goto :goto_18

    nop

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_17

    nop

    nop

    :goto_1c
    iget v3, v2, Lfz;->a:I

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-virtual {v2}, Lfz;->hasSubMenu()Z

    move-result v3

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_1e
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_20
    iget-object v2, p0, Lfx;->c:Ljava/util/ArrayList;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_21
    iget-object v2, v2, Lfz;->k:Lgp;

    nop

    nop

    goto/32 :goto_15

    nop

    nop
.end method

.method public final g(Lgi;)V
    .locals 1

    goto/32 :goto_2

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1, v0}, Lfx;->h(Lgi;Landroid/content/Context;)V

    goto/32 :goto_1

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    :goto_2
    iget-object v0, p0, Lfx;->a:Landroid/content/Context;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public final getItem(I)Landroid/view/MenuItem;
    .locals 0

    goto/32 :goto_2

    nop

    nop

    :goto_0
    return-object p0

    nop

    nop

    :goto_1
    check-cast p0, Landroid/view/MenuItem;

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
    iget-object p0, p0, Lfx;->c:Ljava/util/ArrayList;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop
.end method

.method public final h(Lgi;Landroid/content/Context;)V
    .locals 2

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_10

    nop

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

    nop

    :goto_2
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :cond_0
    goto/32 :goto_0

    nop

    :goto_3
    invoke-interface {p1, p2, p0}, Lgi;->b(Landroid/content/Context;Lfx;)V

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_4
    const v0, 0x1b

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_6
    iget-object v1, p0, Lfx;->x:Ljava/util/concurrent/CopyOnWriteArrayList;

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_8
    add-int v0, v0, v1

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

    :goto_9
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const/4 p1, 0x1

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

    :goto_b
    iput-boolean p1, p0, Lfx;->r:Z

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_c
    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_d
    const v1, 0x7

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

    :goto_e
    new-instance v0, Ljava/lang/ref/WeakReference;

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_f
    return-void

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final hasVisibleItems()Z
    .locals 5

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    if-lez v0, :cond_0

    nop

    goto/32 :goto_12

    nop

    nop

    :cond_0
    goto/32 :goto_11

    nop

    :goto_1
    const v0, 0x1

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_2
    add-int/lit8 v3, v3, 0x1

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

    :goto_3
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_4
    iget-boolean v0, p0, Lfx;->j:Z

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_5
    invoke-virtual {v4}, Lfz;->isVisible()Z

    move-result v4

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_6
    return v1

    nop

    nop

    :goto_7
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_8
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_9
    if-nez v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_a
    const/4 v2, 0x0

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_b
    if-nez v4, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :cond_2
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_c
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_d
    if-lt v3, v0, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_e
    const/4 v1, 0x1

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

    :goto_f
    invoke-virtual {p0}, Lfx;->size()I

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_10
    iget-object v4, p0, Lfx;->c:Ljava/util/ArrayList;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_11
    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_13
    goto :goto_19

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    return v1

    nop

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_12

    nop

    nop

    nop

    :goto_18
    move v3, v2

    nop

    nop

    :goto_19
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    return v2

    nop

    nop

    :goto_1b
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    const v1, 0xa

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

    :goto_1d
    check-cast v4, Lfz;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop
.end method

.method public final i(Z)V
    .locals 3

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_1
    check-cast v2, Lgi;

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/16 :goto_17

    nop

    nop

    :goto_3
    goto/32 :goto_22

    nop

    nop

    nop

    :goto_4
    iget-object v0, p0, Lfx;->x:Ljava/util/concurrent/CopyOnWriteArrayList;

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_6
    if-nez v1, :cond_0

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

    :cond_0
    goto/32 :goto_1f

    nop

    nop

    :goto_7
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

    nop

    :goto_8
    const/4 v0, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_9
    goto :goto_17

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_15

    nop

    nop

    :goto_b
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_d
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_e
    return-void

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_10
    iput-boolean p1, p0, Lfx;->v:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_11
    iget-boolean v0, p0, Lfx;->v:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_11

    nop

    nop

    nop

    :goto_14
    const v0, 0xf

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_15
    invoke-interface {v2, p0, p1}, Lgi;->c(Lfx;Z)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_18
    if-nez v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_19
    iget-object v2, p0, Lfx;->x:Ljava/util/concurrent/CopyOnWriteArrayList;

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

    :goto_1a
    const v1, 0x6

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

    :goto_1b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_1c
    if-eqz v2, :cond_2

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :cond_2
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    if-lez v0, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :cond_3
    goto/32 :goto_12

    nop

    :goto_1e
    iput-boolean v0, p0, Lfx;->v:Z

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_1f
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

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

    :goto_20
    check-cast v1, Ljava/lang/ref/WeakReference;

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_21
    goto/32 :goto_13

    nop

    :goto_22
    const/4 p1, 0x0

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop
.end method

.method public final isShortcutKey(ILandroid/view/KeyEvent;)Z
    .locals 0

    goto/32 :goto_2

    nop

    nop

    :goto_0
    const/4 p0, 0x1

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const/4 p0, 0x0

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
    invoke-virtual {p0, p1, p2}, Lfx;->b(ILandroid/view/KeyEvent;)Lfz;

    move-result-object p0

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

    :goto_3
    return p0

    nop

    nop

    nop

    :goto_4
    return p0

    nop

    nop

    :goto_5
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_6
    if-nez p0, :cond_0

    nop

    goto/32 :goto_5

    nop

    nop

    :cond_0
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method

.method final j(Ljava/util/List;ILandroid/view/KeyEvent;)V
    .locals 12

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-ne v8, v9, :cond_0

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_43

    nop

    nop

    :goto_1
    iget v9, v7, Lfz;->g:I

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    :goto_3
    const/16 v9, 0x8

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_4
    const v0, 0x20

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_5
    goto/32 :goto_a

    nop

    nop

    :goto_6
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_7
    if-nez v0, :cond_1

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_3c

    nop

    nop

    :goto_8
    if-nez v8, :cond_2

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

    :cond_2
    goto/32 :goto_34

    nop

    nop

    :goto_9
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_44

    nop

    nop

    :goto_b
    const/4 v5, 0x0

    nop

    goto/32 :goto_2c

    nop

    nop

    :goto_c
    rem-int v0, v0, v1

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_d
    iget-char v8, v7, Lfz;->f:C

    nop

    nop

    :goto_e
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    if-nez v0, :cond_3

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_10
    if-eq p2, v4, :cond_4

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    :goto_12
    if-nez v8, :cond_5

    nop

    nop

    goto/32 :goto_39

    nop

    :cond_5
    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_14
    iget-object v9, v2, Landroid/view/KeyCharacterMap$KeyData;->meta:[C

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_15
    if-lez v0, :cond_6

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

    :cond_6
    goto/32 :goto_5

    nop

    :goto_16
    goto/16 :goto_2

    nop

    nop

    :goto_17
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    if-ne v8, v9, :cond_7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    :cond_7
    goto/32 :goto_f

    nop

    nop

    :goto_19
    if-eq v8, v9, :cond_8

    nop

    goto/32 :goto_39

    nop

    :cond_8
    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    goto/16 :goto_e

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_d

    nop

    nop

    :goto_1c
    iget-object v3, p0, Lfx;->c:Ljava/util/ArrayList;

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

    nop

    :goto_1d
    const v1, 0x15

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

    :goto_1e
    const/4 v10, 0x2

    nop

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

    :goto_1f
    if-lt v6, v3, :cond_9

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

    :cond_9
    goto/32 :goto_37

    nop

    nop

    :goto_20
    invoke-virtual {p0}, Lfx;->x()Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    :goto_21
    if-eqz v3, :cond_a

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    :cond_a
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_22
    const/16 v4, 0x43

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_23
    invoke-virtual {v7}, Lfz;->hasSubMenu()Z

    move-result v8

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_24
    iget-char v8, v7, Lfz;->h:C

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_25
    aget-char v9, v9, v5

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_26
    move p2, v4

    nop

    :goto_27
    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_28
    aget-char v9, v9, v10

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_29
    invoke-virtual {v8, p1, p2, p3}, Lfx;->j(Ljava/util/List;ILandroid/view/KeyEvent;)V

    :goto_2a
    goto/32 :goto_35

    nop

    nop

    :goto_2b
    add-int/lit8 v6, v6, 0x1

    nop

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

    nop

    :goto_2c
    move v6, v5

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_2e
    invoke-direct {v2}, Landroid/view/KeyCharacterMap$KeyData;-><init>()V

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    if-eq p2, v4, :cond_b

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    :cond_b
    :goto_30
    goto/32 :goto_41

    nop

    nop

    nop

    :goto_31
    goto :goto_2d

    nop

    nop

    :goto_32
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_33
    if-eq v11, v9, :cond_c

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    :cond_c
    goto/32 :goto_42

    nop

    nop

    nop

    nop

    :goto_34
    iget-object v8, v7, Lfz;->k:Lgp;

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_35
    if-nez v0, :cond_d

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :cond_d
    goto/32 :goto_24

    nop

    nop

    :goto_36
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_37
    iget-object v7, p0, Lfx;->c:Ljava/util/ArrayList;

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_38
    invoke-interface {p1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_39
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    const v10, 0x1100f

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    :goto_3b
    new-instance v2, Landroid/view/KeyCharacterMap$KeyData;

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    iget v9, v7, Lfz;->i:I

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_3d
    and-int v11, v1, v10

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    :goto_3e
    check-cast v7, Lfz;

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_3f
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getModifiers()I

    move-result v1

    nop

    goto/32 :goto_3b

    nop

    nop

    :goto_40
    and-int/2addr v9, v10

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    :goto_41
    invoke-virtual {v7}, Lfz;->isEnabled()Z

    move-result v8

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

    nop

    :goto_42
    if-nez v8, :cond_e

    nop

    goto/32 :goto_39

    nop

    :cond_e
    goto/32 :goto_14

    nop

    nop

    nop

    :goto_43
    iget-object v9, v2, Landroid/view/KeyCharacterMap$KeyData;->meta:[C

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_44
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_45
    invoke-virtual {p3, v2}, Landroid/view/KeyEvent;->getKeyData(Landroid/view/KeyCharacterMap$KeyData;)Z

    move-result v3

    nop

    goto/32 :goto_22

    nop

    nop
.end method

.method public final k()V
    .locals 6

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object v5, p0, Lfx;->d:Ljava/util/ArrayList;

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_1
    move v3, v2

    nop

    nop

    :goto_2
    goto/32 :goto_22

    nop

    nop

    nop

    :goto_3
    const/4 v2, 0x0

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_5
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    :goto_6
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iput-boolean v2, p0, Lfx;->r:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    :goto_8
    check-cast v4, Lfz;

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_3c

    nop

    nop

    nop

    :goto_a
    add-int/lit8 v3, v3, 0x1

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

    :goto_b
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_c
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_d
    iget-object v0, p0, Lfx;->q:Ljava/util/ArrayList;

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

    :goto_e
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

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

    :goto_f
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    iget-object v0, p0, Lfx;->d:Ljava/util/ArrayList;

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_11
    if-eqz v1, :cond_0

    nop

    goto/32 :goto_38

    nop

    :cond_0
    goto/32 :goto_37

    nop

    nop

    nop

    nop

    :goto_12
    move v3, v2

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    check-cast v5, Lgi;

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_15
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    goto/32 :goto_f

    nop

    nop

    :goto_16
    invoke-interface {v5}, Lgi;->e()Z

    move-result v4

    nop

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

    :goto_17
    const v0, 0x7

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

    :goto_18
    invoke-virtual {p0}, Lfx;->f()Ljava/util/ArrayList;

    move-result-object v0

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_19
    iget-boolean v1, p0, Lfx;->r:Z

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_1a
    const v1, 0x15

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    :goto_1b
    invoke-virtual {p0}, Lfx;->f()Ljava/util/ArrayList;

    move-result-object v1

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_1c
    iget-object v1, p0, Lfx;->x:Ljava/util/concurrent/CopyOnWriteArrayList;

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

    :goto_1d
    invoke-virtual {v4}, Lfz;->o()Z

    move-result v5

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    iget-object v0, p0, Lfx;->q:Ljava/util/ArrayList;

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    :goto_20
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_21
    if-nez v3, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    :cond_1
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_22
    if-lt v3, v1, :cond_2

    nop

    goto/32 :goto_2d

    nop

    :cond_2
    goto/32 :goto_e

    nop

    nop

    :goto_23
    if-eqz v5, :cond_3

    nop

    nop

    goto/32 :goto_35

    nop

    :cond_3
    goto/32 :goto_3d

    nop

    nop

    nop

    :goto_24
    goto/16 :goto_13

    nop

    nop

    nop

    :goto_25
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_26
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_27
    iget-object v5, p0, Lfx;->q:Ljava/util/ArrayList;

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_28
    goto/16 :goto_c

    nop

    nop

    :goto_29
    goto/32 :goto_27

    nop

    nop

    :goto_2a
    check-cast v4, Ljava/lang/ref/WeakReference;

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_2b
    iget-object v1, p0, Lfx;->d:Ljava/util/ArrayList;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    :goto_2c
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :goto_2d
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_2e
    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    :goto_30
    if-nez v4, :cond_4

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_31
    return-void

    nop

    nop

    :goto_32
    goto/32 :goto_9

    nop

    nop

    :goto_33
    or-int/2addr v3, v4

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_34
    goto/16 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_35
    goto/32 :goto_16

    nop

    nop

    nop

    :goto_36
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_37
    return-void

    nop

    :goto_38
    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_39
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_3a
    if-lez v0, :cond_5

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    :cond_5
    goto/32 :goto_3b

    nop

    :goto_3b
    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :goto_3c
    goto/32 :goto_18

    nop

    nop

    :goto_3d
    iget-object v5, p0, Lfx;->x:Ljava/util/concurrent/CopyOnWriteArrayList;

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    :goto_3e
    invoke-virtual {v5, v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :goto_3f
    if-nez v5, :cond_6

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_40
    iget-object v1, p0, Lfx;->q:Ljava/util/ArrayList;

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

    :goto_41
    goto/16 :goto_2

    nop

    nop

    nop

    :goto_42
    goto/32 :goto_10

    nop

    nop

    nop

    nop
.end method

.method public final l(Z)V
    .locals 2

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_0
    goto/16 :goto_1d

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_18

    nop

    nop

    :goto_2
    if-nez p1, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    :cond_0
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iput-boolean v1, p0, Lfx;->r:Z

    nop

    :goto_4
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_5
    if-nez p1, :cond_1

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_6
    check-cast v0, Ljava/lang/ref/WeakReference;

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_7
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_2b

    nop

    nop

    :goto_a
    if-nez p1, :cond_2

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_b
    if-eqz v0, :cond_3

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    :cond_3
    goto/32 :goto_5

    nop

    nop

    :goto_c
    check-cast v1, Lgi;

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

    :goto_d
    goto/16 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_11
    invoke-virtual {p0}, Lfx;->r()V

    goto/32 :goto_12

    nop

    nop

    :goto_12
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_14
    if-lez v0, :cond_4

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_8

    nop

    :goto_15
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_16
    const v0, 0x5

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_17
    iget-object v1, p0, Lfx;->x:Ljava/util/concurrent/CopyOnWriteArrayList;

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_18
    invoke-virtual {p0}, Lfx;->s()V

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_19
    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_1a
    iput-boolean v1, p0, Lfx;->p:Z

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    const v1, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_1c
    iput-boolean v1, p0, Lfx;->u:Z

    nop

    :goto_1d
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_1e
    iget-object p1, p0, Lfx;->x:Ljava/util/concurrent/CopyOnWriteArrayList;

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_1f
    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

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

    :goto_20
    if-nez v0, :cond_5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :cond_5
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_21
    goto :goto_2d

    nop

    nop

    nop

    nop

    :goto_22
    goto/32 :goto_11

    nop

    nop

    :goto_23
    return-void

    nop

    nop

    :goto_24
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_25
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_26
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_27
    iget-object p1, p0, Lfx;->x:Ljava/util/concurrent/CopyOnWriteArrayList;

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_28
    iput-boolean v1, p0, Lfx;->t:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_29
    if-eqz v1, :cond_6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_17

    nop

    nop

    nop

    :goto_2a
    const/4 v1, 0x1

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_2b
    iget-boolean v0, p0, Lfx;->h:Z

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_2c
    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    nop

    nop

    nop

    nop

    :goto_2d
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    invoke-interface {v1}, Lgi;->i()V

    goto/32 :goto_21

    nop

    nop

    nop

    nop
.end method

.method public final m(Lgi;)V
    .locals 3

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const v0, 0x9

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_2
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_3
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_17

    nop

    :goto_4
    rem-int v0, v0, v1

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

    :goto_5
    const v1, 0x15

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

    :goto_6
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_14

    nop

    nop

    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_a
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    nop

    nop

    :goto_b
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_c
    check-cast v2, Lgi;

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_d
    if-nez v2, :cond_1

    nop

    nop

    goto/32 :goto_f

    nop

    :cond_1
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_e
    if-eq v2, p1, :cond_2

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :cond_2
    :goto_f
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_10
    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_11
    iget-object v2, p0, Lfx;->x:Ljava/util/concurrent/CopyOnWriteArrayList;

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

    :goto_12
    check-cast v1, Ljava/lang/ref/WeakReference;

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_13
    goto/32 :goto_18

    nop

    nop

    nop

    :goto_14
    return-void

    nop

    :goto_15
    goto/32 :goto_13

    nop

    nop

    :goto_16
    iget-object v0, p0, Lfx;->x:Ljava/util/concurrent/CopyOnWriteArrayList;

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_17
    goto/32 :goto_15

    nop

    :goto_18
    goto/32 :goto_16

    nop

    nop

    :goto_19
    if-nez v1, :cond_3

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    :cond_3
    goto/32 :goto_1

    nop

    nop

    nop
.end method

.method public final n(Landroid/os/Bundle;)V
    .locals 7

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_0
    const-string v0, "android:menu:expandedactionview"

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
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_2
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_3
    invoke-interface {v3}, Landroid/view/MenuItem;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_4
    invoke-virtual {p0}, Lfx;->d()Ljava/lang/String;

    move-result-object v0

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

    nop

    :goto_5
    if-nez p0, :cond_0

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :cond_0
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_10

    nop

    :goto_8
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-interface {p0}, Landroid/view/MenuItem;->expandActionView()Z

    :goto_a
    goto/32 :goto_f

    nop

    nop

    nop

    :goto_b
    const/4 v2, 0x0

    nop

    :goto_c
    goto/32 :goto_24

    nop

    nop

    :goto_d
    invoke-interface {v3}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v4

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_e
    check-cast v3, Lgp;

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    return-void

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_11
    invoke-virtual {p0}, Lfx;->size()I

    move-result v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_12
    const v0, 0x7

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

    :goto_13
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_14
    if-nez v4, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    :cond_1
    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_15
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_16
    const/4 v6, -0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_17
    invoke-interface {v3}, Landroid/view/MenuItem;->hasSubMenu()Z

    move-result v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_18
    invoke-virtual {p0, v2}, Lfx;->getItem(I)Landroid/view/MenuItem;

    move-result-object v3

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    if-gtz p1, :cond_2

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

    :cond_2
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_1b
    if-nez v4, :cond_3

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

    :cond_3
    goto/32 :goto_3

    nop

    nop

    :goto_1c
    if-lez v0, :cond_4

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_7

    nop

    :goto_1d
    invoke-virtual {v3, p1}, Lfx;->n(Landroid/os/Bundle;)V

    :goto_1e
    goto/32 :goto_1f

    nop

    nop

    :goto_1f
    add-int/lit8 v2, v2, 0x1

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_20
    const v1, 0x16

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_21
    goto/16 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_22
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_23
    if-ne v5, v6, :cond_5

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_24
    if-lt v2, v1, :cond_6

    nop

    goto/32 :goto_22

    nop

    :cond_6
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_25
    invoke-virtual {v4, v0}, Landroid/view/View;->restoreHierarchyState(Landroid/util/SparseArray;)V

    :goto_26
    goto/32 :goto_17

    nop

    nop

    nop

    :goto_27
    invoke-virtual {p0, p1}, Lfx;->findItem(I)Landroid/view/MenuItem;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop
.end method

.method public final o(Landroid/os/Bundle;)V
    .locals 7

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p1, p0, v2}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    :goto_1
    goto/32 :goto_24

    nop

    nop

    :goto_2
    invoke-interface {v3}, Landroid/view/MenuItem;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v3

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_3
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    if-nez v4, :cond_0

    nop

    goto/32 :goto_10

    nop

    :cond_0
    goto/32 :goto_7

    nop

    nop

    :goto_5
    goto :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_23

    nop

    nop

    nop

    :goto_7
    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result v5

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_8
    invoke-interface {v3}, Landroid/view/MenuItem;->hasSubMenu()Z

    move-result v4

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

    :goto_9
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_a
    const/4 v2, 0x0

    nop

    :goto_b
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-virtual {v3, p1}, Lfx;->o(Landroid/os/Bundle;)V

    :goto_d
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    check-cast v3, Lgp;

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-virtual {p1, v5, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :goto_10
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_11
    new-instance v2, Landroid/util/SparseArray;

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_12
    if-lt v1, v0, :cond_1

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

    :cond_1
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    invoke-interface {v3}, Landroid/view/MenuItem;->getItemId()I

    move-result v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_15
    const v0, 0x18

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

    :goto_16
    if-eqz v2, :cond_2

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

    :cond_2
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    const-string v5, "android:menu:expandedactionview"

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_18
    if-lez v0, :cond_3

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_1e

    nop

    :goto_19
    invoke-interface {v3}, Landroid/view/MenuItem;->isActionViewExpanded()Z

    move-result v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_1a
    invoke-virtual {p0, v1}, Lfx;->getItem(I)Landroid/view/MenuItem;

    move-result-object v3

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_1b
    const v1, 0x20

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    if-ne v5, v6, :cond_4

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-interface {v3}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v4

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    goto/32 :goto_2b

    nop

    nop

    :goto_20
    invoke-virtual {p0}, Lfx;->d()Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_21
    add-int/lit8 v1, v1, 0x1

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_22
    invoke-virtual {v4, v2}, Landroid/view/View;->saveHierarchyState(Landroid/util/SparseArray;)V

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    if-nez v2, :cond_5

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

    :cond_5
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_24
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_25
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_26
    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    :goto_27
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28
    const/4 v6, -0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_29
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_2a
    if-nez v4, :cond_6

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    invoke-virtual {p0}, Lfx;->size()I

    move-result v0

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

    :goto_2c
    if-nez v4, :cond_7

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop
.end method

.method public p(Lfv;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iput-object p1, p0, Lfx;->b:Lfv;

    nop

    goto/32 :goto_0

    nop

    nop
.end method

.method public final performIdentifierAction(II)Z
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1, p2}, Lfx;->z(Landroid/view/MenuItem;I)Z

    move-result p0

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    return p0

    nop

    nop

    :goto_2
    invoke-virtual {p0, p1}, Lfx;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method

.method public final performShortcut(ILandroid/view/KeyEvent;I)Z
    .locals 0

    goto/32 :goto_b

    nop

    nop

    :goto_0
    const/4 p2, 0x1

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_1
    and-int/lit8 p2, p3, 0x2

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_2
    if-nez p1, :cond_0

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :cond_0
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p0, p1, p3}, Lfx;->z(Landroid/view/MenuItem;I)Z

    move-result p1

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const/4 p1, 0x0

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_6
    return p1

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_9
    invoke-virtual {p0, p2}, Lfx;->i(Z)V

    :goto_a
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_b
    invoke-virtual {p0, p1, p2}, Lfx;->b(ILandroid/view/KeyEvent;)Lfz;

    move-result-object p1

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

    :goto_c
    if-nez p2, :cond_1

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_0

    nop

    nop
.end method

.method public final q(ILjava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;Landroid/view/View;)V
    .locals 1

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_0
    const/4 p1, 0x0

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iget-object p2, p0, Lfx;->l:Landroid/content/res/Resources;

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

    :goto_2
    iget-object p1, p0, Lfx;->a:Landroid/content/Context;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_3
    invoke-virtual {p1, p3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iput-object p2, p0, Lfx;->e:Ljava/lang/CharSequence;

    nop

    nop

    :goto_5
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_6
    if-gtz p3, :cond_0

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {p2, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iput-object v0, p0, Lfx;->g:Landroid/view/View;

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    iput-object p4, p0, Lfx;->f:Landroid/graphics/drawable/Drawable;

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_c
    goto :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_f

    nop

    nop

    nop

    :goto_e
    iput-object p5, p0, Lfx;->g:Landroid/view/View;

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_f
    if-nez p4, :cond_1

    nop

    nop

    goto/32 :goto_b

    nop

    :cond_1
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_10
    iput-object v0, p0, Lfx;->e:Ljava/lang/CharSequence;

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_11
    invoke-virtual {p0, p1}, Lfx;->l(Z)V

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_12
    iput-object p1, p0, Lfx;->f:Landroid/graphics/drawable/Drawable;

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_13
    iput-object v0, p0, Lfx;->f:Landroid/graphics/drawable/Drawable;

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

    :goto_14
    if-nez p5, :cond_2

    nop

    nop

    goto/32 :goto_18

    nop

    :cond_2
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_15
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_16
    return-void

    nop

    :goto_17
    goto/16 :goto_9

    nop

    nop

    :goto_18
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    iput-object p1, p0, Lfx;->e:Ljava/lang/CharSequence;

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_1a
    if-nez p2, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    goto/16 :goto_5

    nop

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    if-gtz p1, :cond_4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final r()V
    .locals 2

    goto/32 :goto_10

    nop

    nop

    :goto_0
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_1
    iput-boolean v0, p0, Lfx;->h:Z

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_2
    iget-boolean v0, p0, Lfx;->u:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_3
    const/4 v0, 0x0

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

    :goto_4
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_d

    nop

    nop

    :goto_6
    const v1, 0xb

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_7
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_9
    if-nez v1, :cond_0

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :cond_0
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_a
    rem-int v0, v0, v1

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_b
    invoke-virtual {p0, v0}, Lfx;->l(Z)V

    :goto_c
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_e
    iput-boolean v0, p0, Lfx;->t:Z

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_f
    if-lez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    :cond_1
    goto/32 :goto_7

    nop

    :goto_10
    const v0, 0x19

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_11
    iget-boolean v1, p0, Lfx;->t:Z

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
.end method

.method public final removeGroup(I)V
    .locals 5

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto :goto_6

    nop

    nop

    :goto_1
    goto/32 :goto_14

    nop

    nop

    nop

    :goto_2
    const/4 v1, 0x0

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    :goto_4
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_5
    move v2, v1

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_7
    move v3, v1

    nop

    nop

    :goto_8
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_9
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_a
    add-int/lit8 v4, v3, 0x1

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_b
    invoke-virtual {p0}, Lfx;->size()I

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_c
    add-int/lit8 v2, v2, 0x1

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

    :goto_d
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_e
    iget v3, v3, Lfz;->b:I

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

    :goto_f
    const/4 p1, 0x1

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    :goto_10
    move v3, v4

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_11
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_12
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    :cond_0
    goto/32 :goto_23

    nop

    :goto_13
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_14
    const/4 v2, -0x1

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    iget-object v3, p0, Lfx;->c:Ljava/util/ArrayList;

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_17
    invoke-direct {p0, v2, v1}, Lfx;->ad49e23a9e5e6fdec23353cfc00ae3a3m(IZ)V

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_18
    check-cast v3, Lfz;

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_19
    if-lt v2, v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_16

    nop

    nop

    nop

    :goto_1a
    if-lt v3, v0, :cond_2

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_1b
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_1c
    goto :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_1e
    iget-object v0, p0, Lfx;->c:Ljava/util/ArrayList;

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

    nop

    :goto_1f
    iget v3, v3, Lfz;->b:I

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_20
    if-eq v3, p1, :cond_3

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_1c

    nop

    nop

    :goto_21
    if-gez v2, :cond_4

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
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_22
    if-eq v3, p1, :cond_5

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_24
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    sub-int/2addr v0, v2

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    const v0, 0xc

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_27
    invoke-virtual {p0, p1}, Lfx;->l(Z)V

    :goto_28
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_29
    const v1, 0x20

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_2a
    iget-object v3, p0, Lfx;->c:Ljava/util/ArrayList;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_2b
    goto/32 :goto_24

    nop

    :goto_2c
    goto/16 :goto_8

    nop

    :goto_2d
    goto/32 :goto_f

    nop

    nop

    nop

    :goto_2e
    check-cast v3, Lfz;

    nop

    goto/32 :goto_e

    nop

    nop
.end method

.method public final removeItem(I)V
    .locals 3

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto :goto_3

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_e

    nop

    nop

    :goto_2
    const/4 v1, -0x1

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_13

    nop

    nop

    :goto_4
    iget v2, v2, Lfz;->a:I

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

    :goto_5
    iget-object v2, p0, Lfx;->c:Ljava/util/ArrayList;

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

    :goto_6
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

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
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_a

    nop

    :goto_9
    add-int v0, v0, v1

    nop

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

    :goto_a
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-direct {p0, v1, p1}, Lfx;->ad49e23a9e5e6fdec23353cfc00ae3a3m(IZ)V

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    const v0, 0x18

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_e
    add-int/lit8 v1, v1, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_f
    goto :goto_19

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

    nop

    :goto_11
    rem-int v0, v0, v1

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_12
    invoke-virtual {p0}, Lfx;->size()I

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    const/4 p1, 0x1

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    return-void

    nop

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    const v1, 0xe

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_17
    if-eq v2, p1, :cond_1

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    const/4 v1, 0x0

    nop

    nop

    :goto_19
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    check-cast v2, Lfz;

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

    :goto_1b
    if-lt v1, v0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_5

    nop

    nop

    nop

    nop
.end method

.method public final s()V
    .locals 1

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-boolean v0, p0, Lfx;->h:Z

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_1
    const/4 v0, 0x1

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
    if-eqz v0, :cond_0

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1

    nop

    nop

    :goto_3
    const/4 v0, 0x0

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

    nop

    :goto_4
    iget-boolean v0, p0, Lfx;->h:Z

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

    :goto_5
    iput-boolean v0, p0, Lfx;->u:Z

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_7
    iput-boolean v0, p0, Lfx;->t:Z

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_8
    return-void

    nop

    nop

    nop

    nop

    nop
.end method

.method public final setGroupCheckable(IZZ)V
    .locals 4

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    add-int v0, v0, v1

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

    :goto_1
    check-cast v2, Lfz;

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

    nop

    :goto_2
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_b

    nop

    :goto_3
    goto/32 :goto_c

    nop

    :goto_4
    iget-object v0, p0, Lfx;->c:Ljava/util/ArrayList;

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_5
    invoke-virtual {v2, p3}, Lfz;->j(Z)V

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_7
    goto/16 :goto_18

    nop

    :goto_8
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    add-int/lit8 v1, v1, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_a
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_d
    invoke-virtual {v2, p2}, Lfz;->setCheckable(Z)Landroid/view/MenuItem;

    :goto_e
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_f
    return-void

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_12
    iget v3, v2, Lfz;->b:I

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_13
    const v0, 0x4

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_14
    if-lt v1, v0, :cond_1

    nop

    goto/32 :goto_8

    nop

    nop

    :cond_1
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_15
    const v1, 0x1e

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_16
    if-eq v3, p1, :cond_2

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_5

    nop

    nop

    :goto_17
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_14

    nop

    nop

    nop

    :goto_19
    iget-object v2, p0, Lfx;->c:Ljava/util/ArrayList;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop
.end method

.method public setGroupDividerEnabled(Z)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    :goto_1
    iput-boolean p1, p0, Lfx;->y:Z

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final setGroupEnabled(IZ)V
    .locals 4

    goto/32 :goto_d

    nop

    nop

    :goto_0
    if-eq v3, p1, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    :cond_0
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {v2, p2}, Lfz;->setEnabled(Z)Landroid/view/MenuItem;

    :goto_2
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const/4 v1, 0x0

    nop

    nop

    :goto_4
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_6
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iget-object v2, p0, Lfx;->c:Ljava/util/ArrayList;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iget v3, v2, Lfz;->b:I

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_a
    const v1, 0x3

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_b
    rem-int v0, v0, v1

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

    :goto_c
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

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

    :goto_d
    const v0, 0xd

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    goto :goto_4

    nop

    :goto_f
    goto/32 :goto_6

    nop

    nop

    :goto_10
    if-lez v0, :cond_1

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_14

    nop

    :goto_11
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_12
    check-cast v2, Lfz;

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

    :goto_13
    iget-object v0, p0, Lfx;->c:Ljava/util/ArrayList;

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_7

    nop

    :goto_15
    goto/32 :goto_13

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_17
    if-lt v1, v0, :cond_2

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    add-int/lit8 v1, v1, 0x1

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop
.end method

.method public final setGroupVisible(IZ)V
    .locals 6

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_10

    nop

    :goto_1
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_3
    goto/16 :goto_1c

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_18

    nop

    nop

    :goto_5
    if-lt v1, v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    :cond_0
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_6
    check-cast v4, Lfz;

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    if-eq v5, p1, :cond_1

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

    :cond_1
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_8
    invoke-virtual {v4, p2}, Lfz;->s(Z)Z

    move-result v4

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const v1, 0x12

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_a
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_b
    if-lez v0, :cond_2

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_0

    nop

    :goto_c
    rem-int v0, v0, v1

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

    :goto_d
    const/4 v1, 0x0

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_e
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    return-void

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_11

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_1

    nop

    nop

    :goto_12
    if-nez v4, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :cond_3
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    const/4 v3, 0x1

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

    :goto_14
    invoke-virtual {p0, v3}, Lfx;->l(Z)V

    :goto_15
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_16
    move v2, v3

    nop

    nop

    :goto_17
    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_18
    if-nez v2, :cond_4

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

    :cond_4
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_19
    iget v5, v4, Lfz;->b:I

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_1a
    const v0, 0x19

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

    :goto_1b
    move v2, v1

    nop

    nop

    :goto_1c
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_1d
    iget-object v0, p0, Lfx;->c:Ljava/util/ArrayList;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    iget-object v4, p0, Lfx;->c:Ljava/util/ArrayList;

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

    :goto_1f
    add-int/lit8 v1, v1, 0x1

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

    nop
.end method

.method public setQwertyMode(Z)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_0
    const/4 p1, 0x0

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

    :goto_1
    return-void

    nop

    nop

    :goto_2
    iput-boolean p1, p0, Lfx;->m:Z

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p0, p1}, Lfx;->l(Z)V

    goto/32 :goto_1

    nop

    nop
.end method

.method public final size()I
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    return p0

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iget-object p0, p0, Lfx;->c:Ljava/util/ArrayList;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public t(Lfz;)Z
    .locals 4

    goto/32 :goto_1a

    nop

    nop

    :goto_0
    const v1, 0x10

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

    :goto_1
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_2
    if-nez v2, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :cond_0
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_3
    iput-object p1, p0, Lfx;->i:Lfz;

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_26

    nop

    nop

    nop

    :goto_5
    check-cast v2, Ljava/lang/ref/WeakReference;

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_6
    if-nez v1, :cond_1

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {v3, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_8
    iget-object v0, p0, Lfx;->x:Ljava/util/concurrent/CopyOnWriteArrayList;

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iget-object v0, p0, Lfx;->x:Ljava/util/concurrent/CopyOnWriteArrayList;

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_a
    check-cast v3, Lgi;

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    if-eqz v0, :cond_2

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

    :cond_2
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-virtual {p0}, Lfx;->r()V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_e
    iget-object v0, p0, Lfx;->i:Lfz;

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

    :goto_f
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_10
    goto/16 :goto_24

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    if-eqz v3, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :cond_3
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    if-ne v0, p1, :cond_4

    nop

    nop

    goto/32 :goto_22

    nop

    :cond_4
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_27

    nop

    nop

    :goto_15
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_16
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_17
    const/4 p1, 0x0

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

    :goto_18
    iget-object v3, p0, Lfx;->x:Ljava/util/concurrent/CopyOnWriteArrayList;

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_19
    invoke-virtual {p0}, Lfx;->s()V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_1a
    const v0, 0x11

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

    :goto_1b
    if-nez v1, :cond_5

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :cond_5
    :goto_1c
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_1d
    const/4 v1, 0x0

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_1e
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_1f
    if-lez v0, :cond_6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    :cond_6
    goto/32 :goto_14

    nop

    :goto_20
    goto/32 :goto_15

    nop

    nop

    nop

    :goto_21
    goto/16 :goto_4

    nop

    :goto_22
    goto/32 :goto_19

    nop

    nop

    :goto_23
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    nop

    nop

    nop

    :goto_24
    goto/32 :goto_16

    nop

    nop

    nop

    :goto_25
    invoke-interface {v3, p1}, Lgi;->g(Lfz;)Z

    move-result v1

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    return v1

    nop

    nop

    nop

    :goto_27
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_28
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v0

    nop

    goto/32 :goto_1d

    nop

    nop
.end method

.method public u(Lfx;Landroid/view/MenuItem;)Z
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const/4 p0, 0x0

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_1
    if-nez p0, :cond_0

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

    :cond_0
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_2
    iget-object p0, p0, Lfx;->b:Lfv;

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_3
    const/4 p0, 0x1

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_4
    return p0

    nop

    nop

    :goto_5
    if-nez p0, :cond_1

    nop

    goto/32 :goto_8

    nop

    :cond_1
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_6
    invoke-interface {p0, p1, p2}, Lfv;->H(Lfx;Landroid/view/MenuItem;)Z

    move-result p0

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    return p0

    nop

    :goto_8
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public v(Lfz;)Z
    .locals 4

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_0
    return v1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_2
    goto :goto_e

    nop

    :goto_3
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_4
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    :cond_0
    goto/32 :goto_1a

    nop

    :goto_5
    invoke-virtual {p0}, Lfx;->s()V

    goto/32 :goto_21

    nop

    nop

    :goto_6
    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_7
    const v1, 0x1

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const v0, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_a
    const/4 v1, 0x0

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

    :goto_b
    iput-object p1, p0, Lfx;->i:Lfz;

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    nop

    :goto_e
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_f
    iget-object v0, p0, Lfx;->x:Ljava/util/concurrent/CopyOnWriteArrayList;

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_10
    if-nez v2, :cond_1

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

    :cond_1
    goto/32 :goto_19

    nop

    nop

    :goto_11
    if-eqz v3, :cond_2

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    if-nez v1, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :cond_3
    :goto_13
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_14
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_15
    if-nez v0, :cond_4

    nop

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

    :cond_4
    goto/32 :goto_24

    nop

    nop

    :goto_16
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v0

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_17
    check-cast v2, Ljava/lang/ref/WeakReference;

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_18
    iget-object v3, p0, Lfx;->x:Ljava/util/concurrent/CopyOnWriteArrayList;

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_19
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_1a
    goto/32 :goto_1

    nop

    nop

    :goto_1b
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    check-cast v3, Lgi;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_1d
    invoke-interface {v3, p1}, Lgi;->h(Lfz;)Z

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-virtual {p0}, Lfx;->r()V

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    if-nez v1, :cond_5

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_20
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_21
    iget-object v0, p0, Lfx;->x:Ljava/util/concurrent/CopyOnWriteArrayList;

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_22
    invoke-virtual {v3, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_23
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_24
    return v1

    nop

    nop

    nop

    nop

    nop

    :goto_25
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public w()Z
    .locals 0

    goto/32 :goto_1

    nop

    nop

    :goto_0
    return p0

    nop

    :goto_1
    iget-boolean p0, p0, Lfx;->y:Z

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
.end method

.method public x()Z
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return p0

    nop

    nop

    nop

    nop

    :goto_1
    iget-boolean p0, p0, Lfx;->m:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public y()Z
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return p0

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iget-boolean p0, p0, Lfx;->n:Z

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final z(Landroid/view/MenuItem;I)Z
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1, v0, p2}, Lfx;->A(Landroid/view/MenuItem;Lgi;I)Z

    move-result p0

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

    :goto_1
    return p0

    nop

    :goto_2
    const/4 v0, 0x0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method
