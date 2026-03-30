.class public final Ldcz;
.super Landroid/view/View;
.source "PG"

# interfaces
.implements Lcvj;


# static fields
.field public static a:Ljava/lang/reflect/Method;

.field public static b:Ljava/lang/reflect/Field;

.field public static c:Z

.field public static d:Z

.field private static final g:Lubo;

.field private static final h:Landroid/view/ViewOutlineProvider;


# instance fields
.field public final e:Ldca;

.field public f:Z

.field private final i:Lcxv;

.field private final j:Ldbn;

.field private k:Lubo;

.field private l:Luaz;

.field private m:Z

.field private n:Landroid/graphics/Rect;

.field private o:Z

.field private final p:Lcej;

.field private final q:Ldbw;

.field private r:J

.field private s:Z

.field private t:I


# direct methods
.method private final 1a36313b7ed15ba14e0acb4da569b8b7m(Z)V
    .locals 1

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-ne p1, v0, :cond_0

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    :goto_2
    iget-object v0, p0, Ldcz;->i:Lcxv;

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iput-boolean p1, p0, Ldcz;->f:Z

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iget-boolean v0, p0, Ldcz;->f:Z

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {v0, p0, p1}, Lcxv;->t(Lcvj;Z)V

    :goto_6
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method private final 33b3102b6558811a7b7629a1e8e59bd2m()Lcfi;
    .locals 1

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-object p0

    nop

    nop

    :goto_1
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_2
    if-nez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    :cond_0
    goto/32 :goto_3

    nop

    nop

    :goto_3
    goto :goto_1

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_5
    invoke-virtual {p0}, Ldca;->b()Lcfi;

    move-result-object p0

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_6
    if-nez v0, :cond_1

    nop

    goto/32 :goto_1

    nop

    :cond_1
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {p0}, Ldcz;->getClipToOutline()Z

    move-result v0

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
    return-object p0

    nop

    nop

    :goto_9
    iget-object p0, p0, Ldcz;->e:Ldca;

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_a
    const/4 p0, 0x0

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

    :goto_b
    invoke-virtual {v0}, Ldca;->d()Z

    move-result v0

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

    :goto_c
    iget-object v0, p0, Ldcz;->e:Ldca;

    nop

    goto/32 :goto_b

    nop

    nop
.end method

.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_0
    sput-object v0, Ldcz;->h:Landroid/view/ViewOutlineProvider;

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_1
    new-instance v0, Ldcw;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_2
    sput-object v0, Ldcz;->g:Lubo;

    nop

    goto/32 :goto_1

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
    invoke-direct {v0}, Ldcw;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_5
    sget-object v0, Ldcx;->a:Ldcx;

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
.end method

.method public constructor <init>(Lcxv;Ldbn;Lubo;Luaz;)V
    .locals 1

    goto/32 :goto_2

    nop

    nop

    :goto_0
    const/4 p1, 0x1

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_1
    sget-wide p3, Lcfx;->a:J

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p1}, Lcxv;->getContext()Landroid/content/Context;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_3
    sget-object p3, Ldcz;->g:Lubo;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_4
    iput-object p3, p0, Ldcz;->k:Lubo;

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_5
    iput-object p2, p0, Ldcz;->j:Ldbn;

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

    :goto_6
    iput-object p1, p0, Ldcz;->i:Lcxv;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_7
    invoke-virtual {p2, p0}, Ldbn;->addView(Landroid/view/View;)V

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-direct {p0, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    new-instance p1, Ldbw;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_a
    invoke-direct {p1}, Lcej;-><init>()V

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_b
    new-instance p1, Lcej;

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_c
    iput-wide p3, p0, Ldcz;->r:J

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

    :goto_d
    iput-boolean p1, p0, Ldcz;->s:Z

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_e
    iput-object p1, p0, Ldcz;->p:Lcej;

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_f
    iput-object p1, p0, Ldcz;->q:Ldbw;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_10
    invoke-direct {p1, p3}, Ldbw;-><init>(Lubo;)V

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_11
    return-void

    nop

    nop

    nop

    :goto_12
    iput-object p4, p0, Ldcz;->l:Luaz;

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_13
    iput-object p1, p0, Ldcz;->e:Ldca;

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

    :goto_14
    new-instance p1, Ldca;

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_15
    const/4 p1, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_16
    invoke-direct {p1}, Ldca;-><init>()V

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_17
    invoke-virtual {p0, p1}, Ldcz;->setWillNotDraw(Z)V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_18
    invoke-static {}, Landroid/view/View;->generateViewId()I

    goto/32 :goto_11

    nop

    nop

    nop

    nop
.end method

.method private final b1051a9d8893542362ad09051775f8f6m()V
    .locals 4

    goto/32 :goto_7

    nop

    nop

    :goto_0
    invoke-virtual {v0, v1, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    :goto_1
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const v1, 0xd

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iget-object v0, p0, Ldcz;->n:Landroid/graphics/Rect;

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_4
    if-eqz v0, :cond_0

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_7
    const v0, 0x16

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_8
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_9
    invoke-virtual {p0, v0}, Ldcz;->setClipBounds(Landroid/graphics/Rect;)V

    goto/32 :goto_f

    nop

    nop

    :goto_a
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_b
    new-instance v0, Landroid/graphics/Rect;

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_c
    invoke-virtual {p0}, Ldcz;->getWidth()I

    move-result v2

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_d
    if-nez v0, :cond_1

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
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_e
    iget-object v0, p0, Ldcz;->n:Landroid/graphics/Rect;

    nop

    goto/32 :goto_1b

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

    :goto_10
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-virtual {p0}, Ldcz;->getHeight()I

    move-result v3

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_12
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_13
    invoke-virtual {p0}, Ldcz;->getHeight()I

    move-result v3

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

    :goto_14
    iput-object v0, p0, Ldcz;->n:Landroid/graphics/Rect;

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    invoke-direct {v0, v1, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_16
    goto :goto_19

    nop

    :goto_17
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    const/4 v0, 0x0

    nop

    :goto_19
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-virtual {p0}, Ldcz;->getWidth()I

    move-result v2

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

    nop

    :goto_1b
    const/4 v1, 0x0

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    iget-boolean v0, p0, Ldcz;->m:Z

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

    :goto_1d
    goto/16 :goto_1

    nop

    :goto_1e
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_1f
    if-lez v0, :cond_2

    nop

    nop

    goto/32 :goto_6

    nop

    :cond_2
    goto/32 :goto_5

    nop
.end method

.method private final ccb4c19b7dbd16be9d2a43125797659dm()V
    .locals 1

    goto/32 :goto_7

    nop

    nop

    :goto_0
    const/4 v0, 0x0

    nop

    :goto_1
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_2
    goto :goto_1

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_0

    nop

    nop

    :goto_4
    invoke-virtual {v0}, Ldca;->a()Landroid/graphics/Outline;

    move-result-object v0

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
    if-nez v0, :cond_0

    nop

    goto/32 :goto_3

    nop

    :cond_0
    goto/32 :goto_9

    nop

    nop

    :goto_6
    invoke-virtual {p0, v0}, Ldcz;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iget-object v0, p0, Ldcz;->e:Ldca;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_8
    return-void

    nop

    nop

    nop

    :goto_9
    sget-object v0, Ldcz;->h:Landroid/view/ViewOutlineProvider;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a(JZ)J
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p3, p0, p1, p2}, Ldbw;->a(Ljava/lang/Object;J)J

    move-result-wide p0

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_2
    if-nez p3, :cond_0

    nop

    goto/32 :goto_4

    nop

    :cond_0
    goto/32 :goto_8

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
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iget-object p3, p0, Ldcz;->q:Ldbw;

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
    invoke-virtual {p3, p0, p1, p2}, Ldbw;->b(Ljava/lang/Object;J)J

    move-result-wide p0

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_7
    return-wide p0

    nop

    :goto_8
    iget-object p3, p0, Ldcz;->q:Ldbw;

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop
.end method

.method public final b()V
    .locals 1

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-object v0, p0, Ldcz;->l:Luaz;

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

    :goto_1
    return-void

    nop

    nop

    nop

    nop

    :goto_2
    invoke-direct {p0, v0}, Ldcz;->1a36313b7ed15ba14e0acb4da569b8b7m(Z)V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {v0, p0}, Ldbn;->removeViewInLayout(Landroid/view/View;)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {v0}, Lcxv;->w()V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_5
    const/4 v0, 0x0

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_6
    iget-object v0, p0, Ldcz;->i:Lcxv;

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_7
    iget-object v0, p0, Ldcz;->j:Ldbn;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_8
    invoke-virtual {v0, p0}, Lcxv;->B(Lcvj;)V

    goto/32 :goto_7

    nop

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

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    iput-object v0, p0, Ldcz;->k:Lubo;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_b
    iget-object v0, p0, Ldcz;->i:Lcxv;

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
.end method

.method public final c(Lcei;Lcid;)V
    .locals 2

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_0
    cmpl-float p2, p2, v0

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_1
    const/4 p2, 0x0

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-interface {p1}, Lcei;->h()V

    :goto_4
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {p2, p1, p0, v0, v1}, Ldbn;->a(Lcei;Landroid/view/View;J)V

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_6
    invoke-interface {p1}, Lcei;->b()V

    :goto_7
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {p0}, Ldcz;->getElevation()F

    move-result p2

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_9
    iput-boolean p2, p0, Ldcz;->o:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_a
    const v1, 0x1a

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_b
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_16

    nop

    :goto_c
    if-gtz p2, :cond_1

    nop

    goto/32 :goto_11

    nop

    nop

    :cond_1
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_d
    if-nez p0, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    :cond_2
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_e
    const/4 p2, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_f
    const/4 v0, 0x0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    goto/16 :goto_2

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_13
    iget-boolean p0, p0, Ldcz;->o:Z

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
    invoke-virtual {p0}, Ldcz;->getDrawingTime()J

    move-result-wide v0

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_15
    if-nez p2, :cond_3

    nop

    nop

    goto/32 :goto_4

    nop

    :cond_3
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
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

    :goto_19
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_1b
    iget-object p2, p0, Ldcz;->j:Ldbn;

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_1c
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_1d
    const v0, 0x19

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop
.end method

.method public final d(Lcdg;Z)V
    .locals 0

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget-object p2, p0, Ldcz;->q:Ldbw;

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p2, p0, p1}, Ldbw;->d(Ljava/lang/Object;Lcdg;)V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_4
    return-void

    nop

    nop

    :goto_5
    if-nez p2, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :cond_0
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_6
    iget-object p2, p0, Ldcz;->q:Ldbw;

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {p2, p0, p1}, Ldbw;->e(Ljava/lang/Object;Lcdg;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method

.method protected final dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 6

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Ldcz;->33b3102b6558811a7b7629a1e8e59bd2m()Lcfi;

    move-result-object v3

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

    :goto_1
    iput-object v2, p1, Lcdq;->a:Landroid/graphics/Canvas;

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_2
    iget-object v3, p0, Ldcz;->k:Lubo;

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_3
    const/4 v5, 0x0

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

    :goto_4
    invoke-direct {p0, v4}, Ldcz;->1a36313b7ed15ba14e0acb4da569b8b7m(Z)V

    goto/32 :goto_22

    nop

    nop

    :goto_5
    invoke-interface {v1}, Lcei;->i()V

    :goto_6
    goto/32 :goto_11

    nop

    nop

    nop

    :goto_7
    iget-object p1, p0, Ldcz;->e:Ldca;

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
    iget-object v1, v0, Lcej;->a:Lcdq;

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

    nop

    :goto_9
    const v1, 0x18

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_a
    iget-object v0, p0, Ldcz;->p:Lcej;

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_b
    if-nez p1, :cond_0

    nop

    goto/32 :goto_6

    nop

    :cond_0
    goto/32 :goto_5

    nop

    nop

    :goto_c
    iget-object v2, v1, Lcdq;->a:Landroid/graphics/Canvas;

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_d
    invoke-interface {v3, v1, v5}, Lubo;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_e
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_f
    if-lez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    :cond_1
    goto/32 :goto_26

    nop

    :goto_10
    invoke-virtual {p1, v1}, Ldca;->c(Lcei;)V

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    iget-object p1, v0, Lcej;->a:Lcdq;

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

    :goto_12
    const/4 p1, 0x1

    nop

    :goto_13
    goto/32 :goto_2

    nop

    nop

    :goto_14
    move p1, v4

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    goto :goto_13

    nop

    nop

    :goto_16
    goto/32 :goto_24

    nop

    nop

    :goto_17
    const/4 v4, 0x0

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_18
    invoke-virtual {p1}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    move-result p1

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    goto :goto_16

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    if-eqz v3, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

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

    :goto_1c
    const v0, 0x1d

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    if-eqz p1, :cond_3

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

    :cond_3
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    iput-object p1, v1, Lcdq;->a:Landroid/graphics/Canvas;

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

    :goto_1f
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_20
    if-nez v3, :cond_4

    nop

    nop

    goto/32 :goto_e

    nop

    :cond_4
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_21
    goto/32 :goto_27

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
    goto/32 :goto_21

    nop

    nop

    :goto_24
    invoke-interface {v1}, Lcei;->k()V

    goto/32 :goto_7

    nop

    nop

    :goto_25
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_26
    goto/32 :goto_23

    nop

    :goto_27
    goto/32 :goto_a

    nop

    nop
.end method

.method public final e(J)V
    .locals 2

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Ldcz;->q:Ldbw;

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_1
    if-ne v0, v1, :cond_0

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

    :cond_0
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p0}, Ldcz;->getLeft()I

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_3
    const v0, 0x15

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

    :goto_4
    if-lez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_1a

    nop

    :goto_5
    return-void

    nop

    :goto_6
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {p0, p1}, Ldcz;->offsetTopAndBottom(I)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {p0}, Ldcz;->getTop()I

    move-result p2

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const v1, 0x9

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_a
    sub-int/2addr v0, v1

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

    nop

    :goto_b
    invoke-virtual {v0}, Ldbw;->c()V

    :goto_c
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_e
    invoke-static {p1, p2}, Ldpk;->b(J)I

    move-result p1

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_f
    if-ne p1, p2, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_16

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

    :goto_10
    invoke-virtual {p0, v0}, Ldcz;->offsetLeftAndRight(I)V

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-virtual {p0}, Ldcz;->getLeft()I

    move-result v1

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_12
    iget-object v0, p0, Ldcz;->q:Ldbw;

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

    :goto_13
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_14
    invoke-static {p1, p2}, Ldpk;->a(J)I

    move-result v0

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_15
    invoke-virtual {p0}, Ldbw;->c()V

    :goto_16
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    invoke-virtual {p0}, Ldcz;->getTop()I

    move-result p2

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
    rem-int v0, v0, v1

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_19
    sub-int/2addr p1, p2

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_6

    nop

    nop

    :goto_1b
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop
.end method

.method public final f(J)V
    .locals 3

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {v1, v2}, Lcfx;->b(J)F

    move-result p2

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
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_3
    int-to-float v1, v0

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_4
    const-wide v0, 0xffffffffL

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_5
    if-eq p1, p2, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    :cond_0
    goto/32 :goto_1b

    nop

    nop

    :goto_6
    if-ne v0, p2, :cond_1

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    and-long/2addr v0, p1

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_8
    if-lez v0, :cond_2

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

    :cond_2
    goto/32 :goto_2a

    nop

    :goto_9
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_a
    long-to-int v0, v0

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_b
    invoke-virtual {p0}, Ldbw;->c()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_c
    iget-wide v1, p0, Ldcz;->r:J

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_d
    const v0, 0xe

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_e
    invoke-virtual {p0, p2}, Ldcz;->setPivotY(F)V

    goto/32 :goto_1c

    nop

    nop

    :goto_f
    iget-object p0, p0, Ldcz;->q:Ldbw;

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

    :goto_10
    invoke-static {v1, v2}, Lcfx;->a(J)F

    move-result p2

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    :goto_11
    iget-wide v1, p0, Ldcz;->r:J

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_12
    invoke-virtual {p0, p2, v1, v2, p1}, Ldcz;->layout(IIII)V

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_13
    const/16 v1, 0x20

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_14
    add-int v0, v0, v1

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

    :goto_15
    const v1, 0xb

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_16
    mul-float/2addr p2, v1

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

    :goto_17
    invoke-virtual {p0}, Ldcz;->getTop()I

    move-result p1

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_18
    goto :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_1a
    invoke-virtual {p0}, Ldcz;->getTop()I

    move-result v1

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-virtual {p0}, Ldcz;->getHeight()I

    move-result p2

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_1c
    invoke-direct {p0}, Ldcz;->ccb4c19b7dbd16be9d2a43125797659dm()V

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_1d
    mul-float/2addr p2, v1

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_1e
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    invoke-virtual {p0, p2}, Ldcz;->setPivotX(F)V

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_21
    invoke-direct {p0}, Ldcz;->b1051a9d8893542362ad09051775f8f6m()V

    goto/32 :goto_f

    nop

    nop

    :goto_22
    shr-long/2addr p1, v1

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

    :goto_23
    add-int/2addr v2, p1

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_24
    add-int/2addr p1, v0

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_25
    invoke-virtual {p0}, Ldcz;->getLeft()I

    move-result p2

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_26
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_27
    long-to-int p1, p1

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_28
    invoke-virtual {p0}, Ldcz;->getLeft()I

    move-result v2

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_29
    int-to-float v1, p1

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

    :goto_2a
    goto/32 :goto_2

    nop

    nop

    :goto_2b
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_2c
    invoke-virtual {p0}, Ldcz;->getWidth()I

    move-result p2

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

.method public final forceLayout()V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop
.end method

.method public final g(Lubo;Luaz;)V
    .locals 2

    goto/32 :goto_6

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
    invoke-virtual {v0, p0}, Ldbn;->addView(Landroid/view/View;)V

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_2
    const v1, 0x1b

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_3
    iput-boolean v0, p0, Ldcz;->o:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_4
    if-lez v0, :cond_0

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
    goto/32 :goto_f

    nop

    :goto_5
    const/4 v0, 0x0

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_6
    const v0, 0x19

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_7
    sget-wide v0, Lcfx;->a:J

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_8
    iput-wide v0, p0, Ldcz;->r:J

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_9
    return-void

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_b
    iget-object v0, p0, Ldcz;->j:Ldbn;

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

    :goto_c
    iput-object p1, p0, Ldcz;->k:Lubo;

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    iput-object p2, p0, Ldcz;->l:Luaz;

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_e
    iput-boolean v0, p0, Ldcz;->m:Z

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_11
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_12
    invoke-virtual {v0}, Ldbw;->f()V

    goto/32 :goto_5

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

    goto/32 :goto_11

    nop

    nop

    :goto_14
    iget-object v0, p0, Ldcz;->q:Ldbw;

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
.end method

.method public final h()V
    .locals 1

    goto/32 :goto_2

    nop

    nop

    :goto_0
    invoke-static {p0}, Ldcy;->a(Landroid/view/View;)V

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_1
    if-nez v0, :cond_0

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_2
    iget-boolean v0, p0, Ldcz;->f:Z

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const/4 v0, 0x0

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_4
    invoke-direct {p0, v0}, Ldcz;->1a36313b7ed15ba14e0acb4da569b8b7m(Z)V

    :goto_5
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_6
    return-void

    nop

    nop

    :goto_7
    sget-boolean v0, Ldcz;->d:Z

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

    :goto_8
    if-eqz v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    :cond_1
    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public final hasOverlappingRendering()Z
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    iget-boolean p0, p0, Ldcz;->s:Z

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
    return p0

    nop

    nop
.end method

.method public final i(Lcfp;)V
    .locals 17

    goto/32 :goto_b4

    nop

    nop

    nop

    nop

    nop

    :goto_0
    and-int/lit16 v8, v2, 0x6000

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {v0, v3}, Landroid/view/View;->setOutlineAmbientShadowColor(I)V

    :goto_2
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_3
    mul-float/2addr v3, v4

    nop

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

    nop

    :goto_4
    iget-object v11, v1, Lcfp;->r:Lcfe;

    nop

    nop

    goto/32 :goto_ba

    nop

    nop

    :goto_5
    and-int/lit16 v3, v2, 0x80

    nop

    nop

    nop

    goto/32 :goto_72

    nop

    nop

    nop

    :goto_6
    invoke-virtual/range {p0 .. p0}, Ldcz;->getElevation()F

    move-result v3

    nop

    goto/32 :goto_9c

    nop

    nop

    nop

    nop

    :goto_7
    iput-boolean v7, v0, Ldcz;->m:Z

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_8
    invoke-virtual {v0, v4}, Ldcz;->setRotationY(F)V

    :goto_9
    goto/32 :goto_64

    nop

    nop

    nop

    nop

    nop

    :goto_a
    if-nez v8, :cond_0

    nop

    goto/32 :goto_bc

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_bb

    nop

    nop

    nop

    nop

    :goto_b
    if-gtz v3, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_74

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_54

    nop

    nop

    :goto_c
    or-int/2addr v2, v3

    nop

    nop

    goto/32 :goto_a2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    if-nez v3, :cond_2

    nop

    goto/32 :goto_74

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_73

    nop

    nop

    :goto_e
    move v5, v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a9

    nop

    nop

    nop

    :goto_f
    if-nez v3, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8e

    nop

    nop

    :cond_3
    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_10
    move v3, v6

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_11
    iget v3, v1, Lcfp;->b:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    :goto_12
    goto/16 :goto_53

    nop

    nop

    :goto_13
    goto/32 :goto_52

    nop

    nop

    nop

    :goto_14
    int-to-float v4, v4

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

    :goto_15
    mul-float/2addr v3, v4

    nop

    nop

    nop

    goto/32 :goto_a1

    nop

    nop

    nop

    nop

    :goto_16
    if-nez v2, :cond_4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_aa

    nop

    :cond_4
    goto/32 :goto_83

    nop

    nop

    nop

    nop

    nop

    :goto_17
    invoke-direct/range {p0 .. p0}, Ldcz;->b1051a9d8893542362ad09051775f8f6m()V

    goto/32 :goto_ae

    nop

    nop

    :goto_18
    move-object/from16 v1, p1

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    :goto_19
    invoke-virtual/range {p0 .. p0}, Ldcz;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    nop

    nop

    nop

    goto/32 :goto_81

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-static {v2, v7}, La;->p(II)Z

    move-result v2

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_1b
    iput-boolean v5, v0, Ldcz;->s:Z

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    goto/16 :goto_99

    nop

    nop

    :goto_1e
    goto/32 :goto_98

    nop

    nop

    nop

    nop

    :goto_1f
    goto/32 :goto_6e

    nop

    nop

    nop

    nop

    nop

    :goto_20
    goto/32 :goto_9d

    nop

    nop

    nop

    nop

    :goto_21
    goto/16 :goto_38

    nop

    nop

    :goto_22
    goto/32 :goto_37

    nop

    nop

    :goto_23
    invoke-virtual {v0, v4}, Ldcz;->setRotationX(F)V

    :goto_24
    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    invoke-direct/range {p0 .. p0}, Ldcz;->33b3102b6558811a7b7629a1e8e59bd2m()Lcfi;

    move-result-object v3

    nop

    nop

    nop

    goto/32 :goto_68

    nop

    nop

    :goto_26
    and-int/lit8 v3, v2, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_91

    nop

    nop

    nop

    nop

    :goto_27
    invoke-virtual {v0, v6, v4}, Ldcz;->setLayerType(ILandroid/graphics/Paint;)V

    :goto_28
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_29
    iget v3, v1, Lcfp;->j:F

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_2a
    and-int/lit16 v3, v2, 0x200

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

    nop

    nop

    :goto_2b
    iget v1, v1, Lcfp;->a:I

    nop

    nop

    nop

    nop

    goto/32 :goto_89

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    and-int/2addr v2, v3

    nop

    nop

    goto/32 :goto_bf

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    iget v5, v5, Landroid/util/DisplayMetrics;->densityDpi:I

    nop

    nop

    nop

    nop

    goto/32 :goto_b6

    nop

    nop

    nop

    :goto_2e
    iget v14, v1, Lcfp;->f:F

    nop

    nop

    nop

    nop

    goto/32 :goto_ad

    nop

    nop

    nop

    nop

    :goto_2f
    if-nez v3, :cond_5

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    :cond_5
    goto/32 :goto_7d

    nop

    nop

    nop

    nop

    :goto_30
    if-nez v7, :cond_6

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

    :cond_6
    :goto_31
    goto/32 :goto_69

    nop

    nop

    nop

    nop

    nop

    :goto_32
    and-int/lit8 v3, v2, 0x4

    nop

    nop

    nop

    nop

    goto/32 :goto_a5

    nop

    nop

    nop

    nop

    :goto_33
    if-nez v3, :cond_7

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_b8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_34
    iget-boolean v8, v8, Ldca;->a:Z

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_35
    iget-object v8, v0, Ldcz;->e:Ldca;

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    :goto_36
    const/4 v7, 0x2

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    :goto_37
    move v7, v6

    nop

    nop

    :goto_38
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_39
    if-nez v7, :cond_8

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :cond_8
    goto/32 :goto_93

    nop

    nop

    :goto_3a
    if-nez v8, :cond_9

    nop

    nop

    goto/32 :goto_af

    nop

    :cond_9
    goto/32 :goto_8c

    nop

    nop

    nop

    :goto_3b
    sget-object v9, Lcfn;->a:Lcfs;

    nop

    nop

    goto/32 :goto_78

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    if-nez v3, :cond_a

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

    :cond_a
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    if-nez v3, :cond_b

    nop

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    :cond_b
    goto/32 :goto_7e

    nop

    nop

    :goto_3e
    invoke-virtual {v0, v3}, Ldcz;->setRotation(F)V

    :goto_3f
    goto/32 :goto_b7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_40
    if-nez v3, :cond_c

    nop

    goto/32 :goto_9f

    nop

    nop

    :cond_c
    goto/32 :goto_56

    nop

    nop

    nop

    nop

    nop

    :goto_41
    invoke-virtual {v0, v3}, Ldcz;->setTranslationY(F)V

    :goto_42
    goto/32 :goto_95

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_43
    and-int/lit8 v3, v2, 0x8

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    :goto_44
    invoke-static {v3, v4}, Lcfx;->a(J)F

    move-result v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c2

    nop

    nop

    nop

    nop

    :goto_45
    const/4 v4, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    :goto_46
    iput-wide v3, v0, Ldcz;->r:J

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_47
    invoke-virtual/range {v10 .. v16}, Ldca;->f(Lcfe;FZFJ)Z

    move-result v7

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    :goto_48
    int-to-float v4, v4

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_49
    invoke-virtual {v0, v3}, Ldcz;->setPivotY(F)V

    :goto_4a
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4b
    iget-object v10, v0, Ldcz;->e:Ldca;

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

    :goto_4c
    const v3, 0x8000

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_4d
    if-nez v3, :cond_d

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :cond_d
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_4e
    invoke-static {v3, v4}, Lcfx;->b(J)F

    move-result v3

    nop

    nop

    nop

    goto/32 :goto_b3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4f
    move v7, v5

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_50
    and-int/lit8 v3, v2, 0x2

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    :goto_51
    iget v2, v1, Lcfp;->a:I

    nop

    nop

    nop

    goto/32 :goto_88

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_52
    move v13, v6

    nop

    nop

    :goto_53
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_54
    iget-object v3, v0, Ldcz;->l:Luaz;

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

    :goto_55
    iget v3, v1, Lcfp;->i:F

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    :goto_56
    invoke-virtual {v0, v7, v4}, Ldcz;->setLayerType(ILandroid/graphics/Paint;)V

    goto/32 :goto_9e

    nop

    nop

    nop

    nop

    nop

    :goto_57
    invoke-virtual {v3}, Ldbw;->c()V

    :goto_58
    goto/32 :goto_9b

    nop

    nop

    nop

    nop

    :goto_59
    sget-object v8, Lcfn;->a:Lcfs;

    nop

    nop

    nop

    nop

    goto/32 :goto_9a

    nop

    nop

    :goto_5a
    if-eq v3, v9, :cond_e

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    :cond_e
    goto/32 :goto_b9

    nop

    nop

    nop

    :goto_5b
    if-nez v3, :cond_f

    nop

    nop

    nop

    nop

    goto/32 :goto_a4

    nop

    nop

    nop

    nop

    nop

    :cond_f
    goto/32 :goto_a7

    nop

    nop

    nop

    :goto_5c
    iget v3, v1, Lcfp;->d:F

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

    :goto_5d
    if-nez v3, :cond_10

    nop

    nop

    goto/32 :goto_97

    nop

    nop

    :cond_10
    goto/32 :goto_96

    nop

    nop

    :goto_5e
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_7f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5f
    const v1, 0xa

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    :goto_60
    and-int/lit8 v3, v2, 0x10

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    :goto_61
    invoke-virtual {v0, v3}, Ldcz;->setScaleX(F)V

    :goto_62
    goto/32 :goto_50

    nop

    nop

    nop

    nop

    nop

    :goto_63
    move v9, v6

    nop

    goto/32 :goto_8a

    nop

    nop

    nop

    :goto_64
    and-int/lit16 v3, v2, 0x800

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_65
    move v13, v5

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_66
    invoke-virtual {v0, v3}, Ldcz;->setElevation(F)V

    :goto_67
    goto/32 :goto_80

    nop

    nop

    nop

    :goto_68
    const/4 v5, 0x1

    nop

    nop

    nop

    goto/32 :goto_a8

    nop

    nop

    nop

    :goto_69
    invoke-virtual/range {p0 .. p0}, Ldcz;->invalidate()V

    :goto_6a
    goto/32 :goto_76

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6b
    invoke-virtual {v0, v3}, Ldcz;->setAlpha(F)V

    :goto_6c
    goto/32 :goto_43

    nop

    nop

    :goto_6d
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_6e
    goto/32 :goto_8f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6f
    move v9, v5

    nop

    nop

    nop

    :goto_70
    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    :goto_71
    iget-wide v3, v0, Ldcz;->r:J

    nop

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

    :goto_72
    if-nez v3, :cond_11

    nop

    goto/32 :goto_b1

    nop

    nop

    nop

    nop

    :cond_11
    goto/32 :goto_b5

    nop

    nop

    nop

    nop

    :goto_73
    invoke-interface {v3}, Luaz;->a()Ljava/lang/Object;

    :goto_74
    goto/32 :goto_92

    nop

    nop

    nop

    nop

    nop

    :goto_75
    invoke-static {v2, v5}, La;->p(II)Z

    move-result v3

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    :goto_76
    iget-boolean v3, v0, Ldcz;->o:Z

    nop

    goto/32 :goto_7a

    nop

    nop

    nop

    nop

    :goto_77
    if-eqz v3, :cond_12

    nop

    nop

    goto/32 :goto_1e

    nop

    :cond_12
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_78
    if-ne v8, v9, :cond_13

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

    :cond_13
    goto/32 :goto_65

    nop

    nop

    nop

    :goto_79
    const/high16 v3, 0x20000

    nop

    nop

    goto/32 :goto_be

    nop

    nop

    nop

    nop

    :goto_7a
    if-eqz v3, :cond_14

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_74

    nop

    nop

    :cond_14
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7b
    iget v2, v1, Lcfp;->n:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_75

    nop

    nop

    nop

    nop

    nop

    :goto_7c
    invoke-static {v3, v4}, Lcen;->b(J)I

    move-result v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b0

    nop

    nop

    nop

    :goto_7d
    iget v3, v1, Lcfp;->e:F

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

    nop

    :goto_7e
    iget-object v3, v0, Ldcz;->q:Ldbw;

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    :goto_7f
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_a0

    nop

    nop

    :goto_80
    and-int/lit16 v3, v2, 0x400

    nop

    nop

    nop

    goto/32 :goto_85

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_81
    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

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

    :goto_82
    mul-float/2addr v3, v5

    nop

    nop

    nop

    nop

    goto/32 :goto_8d

    nop

    nop

    nop

    :goto_83
    invoke-virtual {v0, v6, v4}, Ldcz;->setLayerType(ILandroid/graphics/Paint;)V

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_84
    iget v3, v1, Lcfp;->f:F

    nop

    goto/32 :goto_66

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_85
    if-nez v3, :cond_15

    nop

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    :cond_15
    goto/32 :goto_55

    nop

    nop

    :goto_86
    if-eqz v8, :cond_16

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8b

    nop

    nop

    nop

    nop

    :cond_16
    goto/32 :goto_63

    nop

    nop

    nop

    :goto_87
    invoke-direct/range {p0 .. p0}, Ldcz;->33b3102b6558811a7b7629a1e8e59bd2m()Lcfi;

    move-result-object v8

    nop

    nop

    nop

    nop

    goto/32 :goto_86

    nop

    nop

    :goto_88
    iget v3, v0, Ldcz;->t:I

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

    :goto_89
    iput v1, v0, Ldcz;->t:I

    nop

    nop

    goto/32 :goto_6d

    nop

    nop

    nop

    :goto_8a
    goto/16 :goto_70

    nop

    :goto_8b
    goto/32 :goto_6f

    nop

    nop

    nop

    nop

    :goto_8c
    if-nez v7, :cond_17

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :cond_17
    goto/32 :goto_c3

    nop

    nop

    nop

    :goto_8d
    invoke-virtual {v0, v3}, Ldcz;->setCameraDistance(F)V

    :goto_8e
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_8f
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_90
    iget-boolean v7, v1, Lcfp;->m:Z

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    :goto_91
    if-nez v3, :cond_18

    nop

    nop

    nop

    nop

    goto/32 :goto_62

    nop

    nop

    nop

    nop

    :cond_18
    goto/32 :goto_11

    nop

    nop

    :goto_92
    and-int/lit16 v3, v2, 0x1f1b

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

    nop

    nop

    :goto_93
    iget-object v8, v1, Lcfp;->l:Lcfs;

    nop

    goto/32 :goto_3b

    nop

    nop

    :goto_94
    iget-wide v3, v1, Lcfp;->k:J

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    :goto_95
    and-int/lit8 v3, v2, 0x20

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b2

    nop

    nop

    nop

    nop

    nop

    :goto_96
    invoke-virtual {v0, v4}, Ldcz;->setTranslationX(F)V

    :goto_97
    goto/32 :goto_60

    nop

    nop

    nop

    nop

    nop

    :goto_98
    move v3, v5

    nop

    nop

    nop

    nop

    :goto_99
    goto/32 :goto_90

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9a
    if-eq v7, v8, :cond_19

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :cond_19
    goto/32 :goto_4f

    nop

    nop

    :goto_9b
    and-int/lit8 v3, v2, 0x40

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_9c
    cmpl-float v3, v3, v4

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_9d
    move-object/from16 v0, p0

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_9e
    goto/16 :goto_28

    nop

    nop

    :goto_9f
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_a0
    if-lez v0, :cond_1a

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :cond_1a
    goto/32 :goto_1f

    nop

    :goto_a1
    invoke-virtual {v0, v3}, Ldcz;->setPivotX(F)V

    goto/32 :goto_71

    nop

    nop

    nop

    :goto_a2
    and-int/lit16 v3, v2, 0x1000

    nop

    goto/32 :goto_a6

    nop

    nop

    :goto_a3
    invoke-virtual {v0, v3}, Ldcz;->setScaleY(F)V

    :goto_a4
    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :goto_a5
    if-nez v3, :cond_1b

    nop

    nop

    goto/32 :goto_6c

    nop

    nop

    :cond_1b
    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    :goto_a6
    if-nez v3, :cond_1c

    nop

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

    :cond_1c
    goto/32 :goto_94

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a7
    iget v3, v1, Lcfp;->c:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a3

    nop

    nop

    nop

    :goto_a8
    const/4 v6, 0x0

    nop

    nop

    nop

    goto/32 :goto_77

    nop

    nop

    nop

    nop

    nop

    :goto_a9
    goto/16 :goto_28

    nop

    nop

    nop

    nop

    :goto_aa
    goto/32 :goto_27

    nop

    nop

    nop

    :goto_ab
    if-nez v3, :cond_1d

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_ac

    nop

    :cond_1d
    :try_start_0
    invoke-virtual {v0, v4}, Landroid/view/View;->setRenderEffect(Landroid/graphics/RenderEffect;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :goto_ac
    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    :goto_ad
    iget-wide v7, v1, Lcfp;->o:J

    nop

    goto/32 :goto_c1

    nop

    nop

    :goto_ae
    invoke-virtual {v0, v13}, Ldcz;->setClipToOutline(Z)V

    :goto_af
    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b0
    invoke-virtual {v0, v3}, Landroid/view/View;->setOutlineSpotShadowColor(I)V

    :goto_b1
    goto/32 :goto_79

    nop

    nop

    :goto_b2
    if-nez v3, :cond_1e

    nop

    nop

    nop

    nop

    goto/32 :goto_67

    nop

    :cond_1e
    goto/32 :goto_84

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b3
    invoke-virtual/range {p0 .. p0}, Ldcz;->getHeight()I

    move-result v4

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_b4
    const v0, 0xb

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    :goto_b5
    iget-wide v3, v1, Lcfp;->h:J

    nop

    nop

    nop

    nop

    goto/32 :goto_7c

    nop

    nop

    :goto_b6
    int-to-float v5, v5

    nop

    goto/32 :goto_82

    nop

    nop

    nop

    :goto_b7
    and-int/lit16 v3, v2, 0x100

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

    :goto_b8
    iget-wide v3, v1, Lcfp;->g:J

    nop

    nop

    nop

    nop

    goto/32 :goto_bd

    nop

    nop

    nop

    nop

    nop

    :goto_b9
    if-nez v8, :cond_1f

    nop

    goto/32 :goto_6a

    nop

    :cond_1f
    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :goto_ba
    iget v12, v1, Lcfp;->d:F

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_bb
    invoke-direct/range {p0 .. p0}, Ldcz;->ccb4c19b7dbd16be9d2a43125797659dm()V

    :goto_bc
    goto/32 :goto_87

    nop

    nop

    nop

    nop

    nop

    :goto_bd
    invoke-static {v3, v4}, Lcen;->b(J)I

    move-result v3

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

    :goto_be
    and-int/2addr v3, v2

    nop

    goto/32 :goto_c0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_bf
    if-nez v2, :cond_20

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :cond_20
    goto/32 :goto_7b

    nop

    nop

    nop

    nop

    nop

    :goto_c0
    const/4 v4, 0x0

    nop

    goto/32 :goto_ab

    nop

    nop

    nop

    nop

    nop

    :goto_c1
    move-wide v15, v7

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    :goto_c2
    invoke-virtual/range {p0 .. p0}, Ldcz;->getWidth()I

    move-result v4

    nop

    goto/32 :goto_48

    nop

    nop

    :goto_c3
    iget-object v7, v1, Lcfp;->l:Lcfs;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    nop
.end method

.method public final invalidate()V
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_0
    if-eqz v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    :cond_0
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0, v0}, Ldcz;->1a36313b7ed15ba14e0acb4da569b8b7m(Z)V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget-boolean v0, p0, Ldcz;->f:Z

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_3
    return-void

    nop

    :goto_4
    const/4 v0, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_5
    invoke-super {p0}, Landroid/view/View;->invalidate()V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_6
    iget-object p0, p0, Ldcz;->i:Lcxv;

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {p0}, Lcxv;->invalidate()V

    :goto_8
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop
.end method

.method public final j(J)Z
    .locals 4

    goto/32 :goto_1d

    nop

    nop

    :goto_0
    cmpg-float p0, v0, p0

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_1
    if-lez v0, :cond_0

    nop

    goto/32 :goto_e

    nop

    :cond_0
    goto/32 :goto_d

    nop

    :goto_2
    invoke-virtual {p0}, Ldcz;->getClipToOutline()Z

    move-result v0

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

    nop

    :goto_3
    return v3

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_22

    nop

    nop

    nop

    :goto_5
    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v1

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_6
    long-to-int v1, v1

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
    if-gez p1, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    :cond_1
    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_8
    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_9
    if-nez v2, :cond_2

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :cond_2
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_a
    invoke-virtual {p0, p1, p2}, Ldca;->e(J)Z

    move-result p0

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_b
    if-nez v0, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_c
    iget-object p0, p0, Ldcz;->e:Ldca;

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    if-ltz p0, :cond_4

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

    :cond_4
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_10
    const/4 p1, 0x0

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

    :goto_11
    cmpg-float p1, v0, p1

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    const/4 v3, 0x1

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_13
    int-to-float p0, p0

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_14
    if-ltz p2, :cond_5

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :cond_5
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    cmpg-float p2, v1, p2

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_16
    return p0

    nop

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_18
    shr-long v1, p1, v1

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_19
    return v3

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    return p0

    nop

    nop

    :goto_1c
    goto/32 :goto_19

    nop

    nop

    nop

    :goto_1d
    const v0, 0x5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_1e
    const-wide v0, 0xffffffffL

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_1f
    and-long/2addr v0, p1

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_20
    invoke-virtual {p0}, Ldcz;->getWidth()I

    move-result p2

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_21
    iget-boolean v2, p0, Ldcz;->m:Z

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    const/4 p0, 0x0

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_23
    cmpg-float p2, v1, p1

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    :goto_24
    int-to-float p2, p2

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

    :goto_25
    long-to-int v0, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    :goto_26
    add-int v0, v0, v1

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_27
    if-gez p2, :cond_6

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_28
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_29
    const v1, 0x5

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    const/16 v1, 0x20

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_2b
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    invoke-virtual {p0}, Ldcz;->getHeight()I

    move-result p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop
.end method

.method public final k()[F
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    return-object p0

    nop

    :goto_1
    iget-object v0, p0, Ldcz;->q:Ldbw;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {v0, p0}, Ldbw;->h(Ljava/lang/Object;)[F

    move-result-object p0

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method protected final onLayout(ZIIII)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop
.end method
