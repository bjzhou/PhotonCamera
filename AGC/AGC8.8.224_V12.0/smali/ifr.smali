.class public final Lifr;
.super Ljava/lang/Object;


# static fields
.field private static final D:Lmwa;

.field private static final E:Lmwa;

.field private static final F:Lmwa;

.field public static a:Z

.field public static b:I

.field public static c:I


# instance fields
.field public final A:I

.field public final B:I

.field public final C:I

.field public final d:I

.field public final e:I

.field public final f:I

.field public final g:I

.field public final h:I

.field public final i:I

.field public final j:I

.field public final k:I

.field public final l:Lmqp;

.field public final m:I

.field public final n:Ljava/lang/String;

.field public final o:I

.field public final p:Z

.field public final q:I

.field public final r:I

.field public final s:I

.field public final t:I

.field public final u:I

.field public final v:Liem;

.field public final w:Lgyu;

.field public final x:I

.field public final y:I

.field public final z:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x0

    sput-boolean v0, Lifr;->a:Z

    invoke-static {}, Lmwa;->i()Lmvw;

    move-result-object v0

    sget-object v1, Lgyu;->b:Lgyu;

    const v2, 0x7f08040a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lmvw;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v1, Lgyu;->c:Lgyu;

    const v2, 0x7f080408

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lmvw;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0}, Lmvw;->b()Lmwa;

    move-result-object v0

    sput-object v0, Lifr;->D:Lmwa;

    invoke-static {}, Lmwa;->i()Lmvw;

    move-result-object v1

    sget-object v2, Lgyu;->b:Lgyu;

    const v3, 0x7f08040b

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lmvw;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v2, Lgyu;->c:Lgyu;

    const v3, 0x7f080409

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lmvw;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1}, Lmvw;->b()Lmwa;

    move-result-object v1

    sput-object v1, Lifr;->E:Lmwa;

    invoke-static {}, Lmwa;->i()Lmvw;

    move-result-object v2

    sget-object v3, Liem;->a:Liem;

    invoke-virtual {v2, v3, v0}, Lmvw;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v3, Liem;->c:Liem;

    invoke-virtual {v2, v3, v0}, Lmvw;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v3, Liem;->n:Liem;

    invoke-virtual {v2, v3, v0}, Lmvw;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v3, Liem;->q:Liem;

    invoke-virtual {v2, v3, v0}, Lmvw;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v3, Liem;->t:Liem;

    invoke-virtual {v2, v3, v1}, Lmvw;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v3, Liem;->y:Liem;

    invoke-virtual {v2, v3, v1}, Lmvw;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v1, Liem;->A:Liem;

    invoke-virtual {v2, v1, v0}, Lmvw;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2}, Lmvw;->b()Lmwa;

    move-result-object v0

    sput-object v0, Lifr;->F:Lmwa;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(IIIIIIIILmqp;ILjava/lang/String;IZIIIIILiem;Lgyu;IIIIII)V
    .locals 2

    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move v1, p1

    iput v1, v0, Lifr;->d:I

    move v1, p2

    iput v1, v0, Lifr;->e:I

    move v1, p3

    iput v1, v0, Lifr;->f:I

    move v1, p4

    iput v1, v0, Lifr;->g:I

    move v1, p5

    iput v1, v0, Lifr;->h:I

    move v1, p6

    iput v1, v0, Lifr;->i:I

    move v1, p7

    iput v1, v0, Lifr;->j:I

    move v1, p8

    iput v1, v0, Lifr;->k:I

    move-object v1, p9

    iput-object v1, v0, Lifr;->l:Lmqp;

    move v1, p10

    iput v1, v0, Lifr;->m:I

    move-object v1, p11

    iput-object v1, v0, Lifr;->n:Ljava/lang/String;

    move v1, p12

    iput v1, v0, Lifr;->o:I

    move v1, p13

    iput-boolean v1, v0, Lifr;->p:Z

    move/from16 v1, p14

    iput v1, v0, Lifr;->q:I

    move/from16 v1, p15

    iput v1, v0, Lifr;->r:I

    move/from16 v1, p16

    iput v1, v0, Lifr;->s:I

    move/from16 v1, p17

    iput v1, v0, Lifr;->t:I

    move/from16 v1, p18

    iput v1, v0, Lifr;->u:I

    move-object/from16 v1, p19

    iput-object v1, v0, Lifr;->v:Liem;

    move-object/from16 v1, p20

    iput-object v1, v0, Lifr;->w:Lgyu;

    move/from16 v1, p21

    iput v1, v0, Lifr;->x:I

    move/from16 v1, p22

    iput v1, v0, Lifr;->y:I

    move/from16 v1, p23

    iput v1, v0, Lifr;->z:I

    move/from16 v1, p24

    iput v1, v0, Lifr;->A:I

    move/from16 v1, p25

    iput v1, v0, Lifr;->B:I

    move/from16 v1, p26

    iput v1, v0, Lifr;->C:I

    return-void
.end method

.method public static a()Lifq;
    .locals 3

    new-instance v0, Lifq;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lifq;-><init>([B)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lifq;->b(Z)V

    invoke-virtual {v0, v1}, Lifq;->r(I)V

    invoke-virtual {v0, v1}, Lifq;->d(I)V

    const-string v2, "none"

    invoke-virtual {v0, v2}, Lifq;->c(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lifq;->i(I)V

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Lifq;->j(I)V

    invoke-virtual {v0, v1}, Lifq;->q(I)V

    invoke-virtual {v0, v1}, Lifq;->p(I)V

    invoke-virtual {v0, v1}, Lifq;->w(I)V

    invoke-virtual {v0, v1}, Lifq;->x(I)V

    invoke-virtual {v0, v1}, Lifq;->y(I)V

    invoke-virtual {v0, v1}, Lifq;->v(I)V

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Lifq;->g(I)V

    invoke-virtual {v0}, Lifq;->e()V

    invoke-virtual {v0, v2}, Lifq;->f(I)V

    return-object v0
.end method

.method public static b(Liem;Lgyu;Landroid/view/View;ZZ)Lifr;
    .locals 2

    sput-boolean p3, Lifr;->a:Z

    if-nez p4, :cond_0

    invoke-static {p2}, Linb;->l(Landroid/view/View;)I

    move-result p3

    sput p3, Lifr;->b:I

    invoke-static {p2}, Linb;->i(Landroid/view/View;)I

    move-result p3

    sput p3, Lifr;->c:I

    :cond_0
    sget-object p3, Liem;->a:Liem;

    invoke-virtual {p0}, Liem;->ordinal()I

    move-result p3

    const/4 v0, 0x0

    packed-switch p3, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Should never get here! "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " missing in switch."

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    sget-object p3, Lifp;->b:Lifp;

    goto/16 :goto_0

    :pswitch_1
    sget-object p3, Lifn;->g:Lifn;

    goto/16 :goto_0

    :pswitch_2
    sget-object p3, Lifn;->a:Lifn;

    goto/16 :goto_0

    :pswitch_3
    sget-object p3, Lhfj;->u:Lhfj;

    goto/16 :goto_0

    :pswitch_4
    sget-object p3, Lifn;->i:Lifn;

    goto/16 :goto_0

    :pswitch_5
    sget-object p3, Lifn;->h:Lifn;

    goto/16 :goto_0

    :pswitch_6
    sget-object p3, Lifn;->q:Lifn;

    goto/16 :goto_0

    :pswitch_7
    sget-object p3, Lifn;->p:Lifn;

    goto/16 :goto_0

    :pswitch_8
    sget-object p3, Lifn;->o:Lifn;

    goto/16 :goto_0

    :pswitch_9
    sget-object p3, Lifn;->n:Lifn;

    goto/16 :goto_0

    :pswitch_a
    sget-object p3, Lifn;->f:Lifn;

    goto/16 :goto_0

    :pswitch_b
    sget-object p3, Lifn;->e:Lifn;

    goto/16 :goto_0

    :pswitch_c
    sget-object p3, Lifn;->d:Lifn;

    goto/16 :goto_0

    :pswitch_d
    sget-object p3, Lifp;->n:Lifp;

    goto/16 :goto_0

    :pswitch_e
    sget-object p3, Lifp;->l:Lifp;

    goto :goto_0

    :pswitch_f
    sget-object p3, Lifn;->c:Lifn;

    goto :goto_0

    :pswitch_10
    sget-object p3, Lifp;->f:Lifp;

    goto :goto_0

    :pswitch_11
    sget-object p3, Lifn;->b:Lifn;

    goto :goto_0

    :pswitch_12
    sget-object p3, Lifp;->m:Lifp;

    goto :goto_0

    :pswitch_13
    sget-object p3, Lifp;->k:Lifp;

    goto :goto_0

    :pswitch_14
    sget-object p3, Lifp;->j:Lifp;

    goto :goto_0

    :pswitch_15
    sget-object p3, Lifp;->i:Lifp;

    goto :goto_0

    :pswitch_16
    sget-object p3, Lifp;->h:Lifp;

    goto :goto_0

    :pswitch_17
    sget-object p3, Lifn;->u:Lifn;

    goto :goto_0

    :pswitch_18
    sget-object p3, Lifn;->k:Lifn;

    goto :goto_0

    :pswitch_19
    sget-object p3, Lifp;->g:Lifp;

    goto :goto_0

    :pswitch_1a
    sget-object p3, Lifp;->e:Lifp;

    goto :goto_0

    :pswitch_1b
    sget-object p3, Lifn;->g:Lifn;

    goto :goto_0

    :pswitch_1c
    sget-object p3, Lifn;->t:Lifn;

    goto :goto_0

    :pswitch_1d
    sget-object p3, Lifp;->c:Lifp;

    goto :goto_0

    :pswitch_1e
    sget-object p3, Lifp;->a:Lifp;

    goto :goto_0

    :pswitch_1f
    sget-object p3, Lifp;->d:Lifp;

    goto :goto_0

    :pswitch_20
    sget-object p3, Lifn;->l:Lifn;

    goto :goto_0

    :pswitch_21
    sget-object p3, Lifn;->s:Lifn;

    goto :goto_0

    :pswitch_22
    sget-object p3, Lifn;->r:Lifn;

    goto :goto_0

    :pswitch_23
    sget-object p3, Lifn;->m:Lifn;

    goto :goto_0

    :pswitch_24
    new-instance p3, Lifo;

    invoke-direct {p3, p4, v0}, Lifo;-><init>(ZI)V

    goto :goto_0

    :pswitch_25
    sget-object p3, Lifn;->j:Lifn;

    goto :goto_0

    :pswitch_26
    sget-object p3, Lifn;->g:Lifn;

    :goto_0
    invoke-virtual {p2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-interface {p3, p2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lifq;

    invoke-virtual {p3, p0}, Lifq;->k(Liem;)V

    if-eqz p1, :cond_4

    iput-object p1, p3, Lifq;->b:Lgyu;

    sget-object p4, Lifr;->F:Lmwa;

    sget-object v1, Lmyz;->a:Lmwa;

    invoke-virtual {p4, p0, v1}, Lmwa;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lmwa;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-virtual {p0, p1, p4}, Lmwa;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-eqz p0, :cond_1

    invoke-virtual {p3, p0}, Lifq;->d(I)V

    :cond_1
    iget p0, p3, Lifq;->c:I

    and-int/lit16 p0, p0, 0x100

    if-eqz p0, :cond_3

    iget p0, p3, Lifq;->a:I

    if-eqz p0, :cond_2

    const/4 p1, 0x0

    invoke-virtual {p2, p0, p1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p4}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object p4

    invoke-virtual {p3, p4}, Lifq;->h(Lmqp;)V

    invoke-virtual {p2, p0}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Lifq;->c(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p0

    div-int/lit8 p0, p0, 0x2

    invoke-virtual {p3, p0}, Lifq;->i(I)V

    :cond_2
    invoke-virtual {p3}, Lifq;->a()Lifr;

    move-result-object p0

    return-object p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Property \"buttonImageResourceId\" has not been set"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Null timerOption"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final c()Lifq;
    .locals 1

    new-instance v0, Lifq;

    invoke-direct {v0, p0}, Lifq;-><init>(Lifr;)V

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lifr;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    check-cast p1, Lifr;

    iget v1, p0, Lifr;->d:I

    iget v3, p1, Lifr;->d:I

    if-ne v1, v3, :cond_1

    iget v1, p0, Lifr;->e:I

    iget v3, p1, Lifr;->e:I

    if-ne v1, v3, :cond_1

    iget v1, p0, Lifr;->f:I

    iget v3, p1, Lifr;->f:I

    if-ne v1, v3, :cond_1

    iget v1, p0, Lifr;->g:I

    iget v3, p1, Lifr;->g:I

    if-ne v1, v3, :cond_1

    iget v1, p0, Lifr;->h:I

    iget v3, p1, Lifr;->h:I

    if-ne v1, v3, :cond_1

    iget v1, p0, Lifr;->i:I

    iget v3, p1, Lifr;->i:I

    if-ne v1, v3, :cond_1

    iget v1, p0, Lifr;->j:I

    iget v3, p1, Lifr;->j:I

    if-ne v1, v3, :cond_1

    iget v1, p0, Lifr;->k:I

    iget v3, p1, Lifr;->k:I

    if-ne v1, v3, :cond_1

    iget-object v1, p0, Lifr;->l:Lmqp;

    iget-object v3, p1, Lifr;->l:Lmqp;

    invoke-virtual {v1, v3}, Lmqp;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lifr;->m:I

    iget v3, p1, Lifr;->m:I

    if-ne v1, v3, :cond_1

    iget-object v1, p0, Lifr;->n:Ljava/lang/String;

    iget-object v3, p1, Lifr;->n:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lifr;->o:I

    iget v3, p1, Lifr;->o:I

    if-ne v1, v3, :cond_1

    iget-boolean v1, p0, Lifr;->p:Z

    iget-boolean v3, p1, Lifr;->p:Z

    if-ne v1, v3, :cond_1

    iget v1, p0, Lifr;->q:I

    iget v3, p1, Lifr;->q:I

    if-ne v1, v3, :cond_1

    iget v1, p0, Lifr;->r:I

    iget v3, p1, Lifr;->r:I

    if-ne v1, v3, :cond_1

    iget v1, p0, Lifr;->s:I

    iget v3, p1, Lifr;->s:I

    if-ne v1, v3, :cond_1

    iget v1, p0, Lifr;->t:I

    iget v3, p1, Lifr;->t:I

    if-ne v1, v3, :cond_1

    iget v1, p0, Lifr;->u:I

    iget v3, p1, Lifr;->u:I

    if-ne v1, v3, :cond_1

    iget-object v1, p0, Lifr;->v:Liem;

    iget-object v3, p1, Lifr;->v:Liem;

    invoke-virtual {v1, v3}, Liem;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lifr;->w:Lgyu;

    iget-object v3, p1, Lifr;->w:Lgyu;

    invoke-virtual {v1, v3}, Lgyu;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lifr;->x:I

    iget v3, p1, Lifr;->x:I

    if-ne v1, v3, :cond_1

    iget v1, p0, Lifr;->y:I

    iget v3, p1, Lifr;->y:I

    if-ne v1, v3, :cond_1

    iget v1, p0, Lifr;->z:I

    iget v3, p1, Lifr;->z:I

    if-ne v1, v3, :cond_1

    iget v1, p0, Lifr;->A:I

    iget v3, p1, Lifr;->A:I

    if-ne v1, v3, :cond_1

    iget v1, p0, Lifr;->B:I

    iget v3, p1, Lifr;->B:I

    if-ne v1, v3, :cond_1

    iget v1, p0, Lifr;->C:I

    iget p1, p1, Lifr;->C:I

    if-ne v1, p1, :cond_1

    return v0

    :cond_1
    return v2
.end method

.method public final hashCode()I
    .locals 4

    iget v0, p0, Lifr;->d:I

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int v0, v0, v1

    iget v2, p0, Lifr;->e:I

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    iget v2, p0, Lifr;->f:I

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    iget v2, p0, Lifr;->g:I

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    iget v2, p0, Lifr;->h:I

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    iget v2, p0, Lifr;->i:I

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    iget v2, p0, Lifr;->j:I

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    iget v2, p0, Lifr;->k:I

    xor-int/2addr v0, v2

    iget-object v2, p0, Lifr;->l:Lmqp;

    invoke-virtual {v2}, Lmqp;->hashCode()I

    move-result v2

    mul-int v0, v0, v1

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    iget v2, p0, Lifr;->m:I

    xor-int/2addr v0, v2

    iget-object v2, p0, Lifr;->n:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    mul-int v0, v0, v1

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    iget v2, p0, Lifr;->o:I

    xor-int/2addr v0, v2

    const/4 v2, 0x1

    iget-boolean v3, p0, Lifr;->p:Z

    if-eq v2, v3, :cond_0

    const/16 v2, 0x4d5

    goto :goto_0

    :cond_0
    const/16 v2, 0x4cf

    :goto_0
    mul-int v0, v0, v1

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    iget v2, p0, Lifr;->q:I

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    iget v2, p0, Lifr;->r:I

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    iget v2, p0, Lifr;->s:I

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    iget v2, p0, Lifr;->t:I

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    iget v2, p0, Lifr;->u:I

    xor-int/2addr v0, v2

    iget-object v2, p0, Lifr;->v:Liem;

    invoke-virtual {v2}, Liem;->hashCode()I

    move-result v2

    mul-int v0, v0, v1

    xor-int/2addr v0, v2

    iget-object v2, p0, Lifr;->w:Lgyu;

    invoke-virtual {v2}, Lgyu;->hashCode()I

    move-result v2

    mul-int v0, v0, v1

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    iget v2, p0, Lifr;->x:I

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    iget v2, p0, Lifr;->y:I

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    iget v2, p0, Lifr;->z:I

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    iget v2, p0, Lifr;->A:I

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    iget v1, p0, Lifr;->B:I

    xor-int/2addr v0, v1

    const v1, -0x2aff6277

    mul-int v0, v0, v1

    iget v1, p0, Lifr;->C:I

    xor-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 28

    move-object/from16 v0, p0

    iget v1, v0, Lifr;->d:I

    iget v2, v0, Lifr;->e:I

    iget v3, v0, Lifr;->f:I

    iget v4, v0, Lifr;->g:I

    iget v5, v0, Lifr;->h:I

    iget v6, v0, Lifr;->i:I

    iget v7, v0, Lifr;->j:I

    iget v8, v0, Lifr;->k:I

    iget-object v9, v0, Lifr;->l:Lmqp;

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    iget v10, v0, Lifr;->m:I

    iget-object v11, v0, Lifr;->n:Ljava/lang/String;

    iget v12, v0, Lifr;->o:I

    iget-boolean v13, v0, Lifr;->p:Z

    iget v14, v0, Lifr;->q:I

    iget v15, v0, Lifr;->r:I

    move/from16 v16, v15

    iget v15, v0, Lifr;->s:I

    move/from16 v17, v15

    iget v15, v0, Lifr;->t:I

    move/from16 v18, v15

    iget v15, v0, Lifr;->u:I

    move/from16 v19, v15

    iget-object v15, v0, Lifr;->v:Liem;

    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v20, v15

    iget-object v15, v0, Lifr;->w:Lgyu;

    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v21, v15

    iget v15, v0, Lifr;->x:I

    move/from16 v22, v15

    iget v15, v0, Lifr;->y:I

    move/from16 v23, v15

    iget v15, v0, Lifr;->z:I

    move/from16 v24, v15

    iget v15, v0, Lifr;->A:I

    move/from16 v25, v15

    iget v15, v0, Lifr;->B:I

    move/from16 v26, v15

    iget v15, v0, Lifr;->C:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v27, v15

    const-string v15, "ShutterButtonSpec{photoCircleRadius="

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", photoCircleAlpha="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", photoCircleColor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", videoDotRadius="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", videoCircleColor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", stopSquareHalfSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", portraitInnerCircleRadius="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", portraitOuterCircleRadius="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", buttonImage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", buttonImageResourceId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", buttonImageResourceEntryName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", buttonImageRectHalfSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", animateRippleEffect="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", ripplePaintAlpha="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", rippleRadius="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mainButtonColor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", roundButtonRadius="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", outerButtonRadius="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", timerOption="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", tickMarkLength="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", tickMarkPaddingToCircleEdge="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", tickMarkRectRoundRadius="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", tickMarkAlpha="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mainOuterButtonAlpha="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", innerDotCenterOffset=0, innerDotColor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
