.class public final synthetic Lcdm;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Predicate;


# static fields
.field public static final synthetic a:Lcdm;

.field public static final synthetic b:Lcdm;

.field public static final synthetic c:Lcdm;

.field public static final synthetic d:Lcdm;

.field public static final synthetic e:Lcdm;

.field public static final synthetic f:Lcdm;

.field public static final synthetic g:Lcdm;

.field public static final synthetic h:Lcdm;

.field public static final synthetic i:Lcdm;

.field public static final synthetic j:Lcdm;

.field public static final synthetic k:Lcdm;

.field public static final synthetic l:Lcdm;

.field public static final synthetic m:Lcdm;

.field public static final synthetic n:Lcdm;

.field public static final synthetic o:Lcdm;

.field public static final synthetic p:Lcdm;

.field public static final synthetic q:Lcdm;

.field public static final synthetic r:Lcdm;

.field public static final synthetic s:Lcdm;

.field public static final synthetic t:Lcdm;


# instance fields
.field private final synthetic u:I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 2

    new-instance v0, Lcdm;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Lcdm;-><init>(I)V

    sput-object v0, Lcdm;->t:Lcdm;

    new-instance v0, Lcdm;

    const/16 v1, 0x13

    invoke-direct {v0, v1}, Lcdm;-><init>(I)V

    sput-object v0, Lcdm;->s:Lcdm;

    new-instance v0, Lcdm;

    const/16 v1, 0x12

    invoke-direct {v0, v1}, Lcdm;-><init>(I)V

    sput-object v0, Lcdm;->r:Lcdm;

    new-instance v0, Lcdm;

    const/16 v1, 0x11

    invoke-direct {v0, v1}, Lcdm;-><init>(I)V

    sput-object v0, Lcdm;->q:Lcdm;

    new-instance v0, Lcdm;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Lcdm;-><init>(I)V

    sput-object v0, Lcdm;->p:Lcdm;

    new-instance v0, Lcdm;

    const/16 v1, 0xe

    invoke-direct {v0, v1}, Lcdm;-><init>(I)V

    sput-object v0, Lcdm;->o:Lcdm;

    new-instance v0, Lcdm;

    const/16 v1, 0xd

    invoke-direct {v0, v1}, Lcdm;-><init>(I)V

    sput-object v0, Lcdm;->n:Lcdm;

    new-instance v0, Lcdm;

    const/16 v1, 0xc

    invoke-direct {v0, v1}, Lcdm;-><init>(I)V

    sput-object v0, Lcdm;->m:Lcdm;

    new-instance v0, Lcdm;

    const/16 v1, 0xb

    invoke-direct {v0, v1}, Lcdm;-><init>(I)V

    sput-object v0, Lcdm;->l:Lcdm;

    new-instance v0, Lcdm;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lcdm;-><init>(I)V

    sput-object v0, Lcdm;->k:Lcdm;

    new-instance v0, Lcdm;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Lcdm;-><init>(I)V

    sput-object v0, Lcdm;->j:Lcdm;

    new-instance v0, Lcdm;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lcdm;-><init>(I)V

    sput-object v0, Lcdm;->i:Lcdm;

    new-instance v0, Lcdm;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Lcdm;-><init>(I)V

    sput-object v0, Lcdm;->h:Lcdm;

    new-instance v0, Lcdm;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Lcdm;-><init>(I)V

    sput-object v0, Lcdm;->g:Lcdm;

    new-instance v0, Lcdm;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lcdm;-><init>(I)V

    sput-object v0, Lcdm;->f:Lcdm;

    new-instance v0, Lcdm;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcdm;-><init>(I)V

    sput-object v0, Lcdm;->e:Lcdm;

    new-instance v0, Lcdm;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lcdm;-><init>(I)V

    sput-object v0, Lcdm;->d:Lcdm;

    new-instance v0, Lcdm;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcdm;-><init>(I)V

    sput-object v0, Lcdm;->c:Lcdm;

    new-instance v0, Lcdm;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcdm;-><init>(I)V

    sput-object v0, Lcdm;->b:Lcdm;

    new-instance v0, Lcdm;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcdm;-><init>(I)V

    sput-object v0, Lcdm;->a:Lcdm;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcdm;->u:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic and(Ljava/util/function/Predicate;)Ljava/util/function/Predicate;
    .locals 1

    iget v0, p0, Lcdm;->u:I

    packed-switch v0, :pswitch_data_0

    invoke-static {p0, p1}, Lj$/util/function/Predicate$-CC;->$default$and(Ljava/util/function/Predicate;Ljava/util/function/Predicate;)Ljava/util/function/Predicate;

    move-result-object p1

    return-object p1

    :pswitch_0
    invoke-static {p0, p1}, Lj$/util/function/Predicate$-CC;->$default$and(Ljava/util/function/Predicate;Ljava/util/function/Predicate;)Ljava/util/function/Predicate;

    move-result-object p1

    return-object p1

    :pswitch_1
    invoke-static {p0, p1}, Lj$/util/function/Predicate$-CC;->$default$and(Ljava/util/function/Predicate;Ljava/util/function/Predicate;)Ljava/util/function/Predicate;

    move-result-object p1

    return-object p1

    :pswitch_2
    invoke-static {p0, p1}, Lj$/util/function/Predicate$-CC;->$default$and(Ljava/util/function/Predicate;Ljava/util/function/Predicate;)Ljava/util/function/Predicate;

    move-result-object p1

    return-object p1

    :pswitch_3
    invoke-static {p0, p1}, Lj$/util/function/Predicate$-CC;->$default$and(Ljava/util/function/Predicate;Ljava/util/function/Predicate;)Ljava/util/function/Predicate;

    move-result-object p1

    return-object p1

    :pswitch_4
    invoke-static {p0, p1}, Lj$/util/function/Predicate$-CC;->$default$and(Ljava/util/function/Predicate;Ljava/util/function/Predicate;)Ljava/util/function/Predicate;

    move-result-object p1

    return-object p1

    :pswitch_5
    invoke-static {p0, p1}, Lj$/util/function/Predicate$-CC;->$default$and(Ljava/util/function/Predicate;Ljava/util/function/Predicate;)Ljava/util/function/Predicate;

    move-result-object p1

    return-object p1

    :pswitch_6
    invoke-static {p0, p1}, Lj$/util/function/Predicate$-CC;->$default$and(Ljava/util/function/Predicate;Ljava/util/function/Predicate;)Ljava/util/function/Predicate;

    move-result-object p1

    return-object p1

    :pswitch_7
    invoke-static {p0, p1}, Lj$/util/function/Predicate$-CC;->$default$and(Ljava/util/function/Predicate;Ljava/util/function/Predicate;)Ljava/util/function/Predicate;

    move-result-object p1

    return-object p1

    :pswitch_8
    invoke-static {p0, p1}, Lj$/util/function/Predicate$-CC;->$default$and(Ljava/util/function/Predicate;Ljava/util/function/Predicate;)Ljava/util/function/Predicate;

    move-result-object p1

    return-object p1

    :pswitch_9
    invoke-static {p0, p1}, Lj$/util/function/Predicate$-CC;->$default$and(Ljava/util/function/Predicate;Ljava/util/function/Predicate;)Ljava/util/function/Predicate;

    move-result-object p1

    return-object p1

    :pswitch_a
    invoke-static {p0, p1}, Lj$/util/function/Predicate$-CC;->$default$and(Ljava/util/function/Predicate;Ljava/util/function/Predicate;)Ljava/util/function/Predicate;

    move-result-object p1

    return-object p1

    :pswitch_b
    invoke-static {p0, p1}, Lj$/util/function/Predicate$-CC;->$default$and(Ljava/util/function/Predicate;Ljava/util/function/Predicate;)Ljava/util/function/Predicate;

    move-result-object p1

    return-object p1

    :pswitch_c
    invoke-static {p0, p1}, Lj$/util/function/Predicate$-CC;->$default$and(Ljava/util/function/Predicate;Ljava/util/function/Predicate;)Ljava/util/function/Predicate;

    move-result-object p1

    return-object p1

    :pswitch_d
    invoke-static {p0, p1}, Lj$/util/function/Predicate$-CC;->$default$and(Ljava/util/function/Predicate;Ljava/util/function/Predicate;)Ljava/util/function/Predicate;

    move-result-object p1

    return-object p1

    :pswitch_e
    invoke-static {p0, p1}, Lj$/util/function/Predicate$-CC;->$default$and(Ljava/util/function/Predicate;Ljava/util/function/Predicate;)Ljava/util/function/Predicate;

    move-result-object p1

    return-object p1

    :pswitch_f
    invoke-static {p0, p1}, Lj$/util/function/Predicate$-CC;->$default$and(Ljava/util/function/Predicate;Ljava/util/function/Predicate;)Ljava/util/function/Predicate;

    move-result-object p1

    return-object p1

    :pswitch_10
    invoke-static {p0, p1}, Lj$/util/function/Predicate$-CC;->$default$and(Ljava/util/function/Predicate;Ljava/util/function/Predicate;)Ljava/util/function/Predicate;

    move-result-object p1

    return-object p1

    :pswitch_11
    invoke-static {p0, p1}, Lj$/util/function/Predicate$-CC;->$default$and(Ljava/util/function/Predicate;Ljava/util/function/Predicate;)Ljava/util/function/Predicate;

    move-result-object p1

    return-object p1

    :pswitch_12
    invoke-static {p0, p1}, Lj$/util/function/Predicate$-CC;->$default$and(Ljava/util/function/Predicate;Ljava/util/function/Predicate;)Ljava/util/function/Predicate;

    move-result-object p1

    return-object p1

    :pswitch_13
    invoke-static {p0, p1}, Lj$/util/function/Predicate$-CC;->$default$and(Ljava/util/function/Predicate;Ljava/util/function/Predicate;)Ljava/util/function/Predicate;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
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

.method public final synthetic negate()Ljava/util/function/Predicate;
    .locals 1

    iget v0, p0, Lcdm;->u:I

    packed-switch v0, :pswitch_data_0

    invoke-static {p0}, Lj$/util/function/Predicate$-CC;->$default$negate(Ljava/util/function/Predicate;)Ljava/util/function/Predicate;

    move-result-object v0

    return-object v0

    :pswitch_0
    invoke-static {p0}, Lj$/util/function/Predicate$-CC;->$default$negate(Ljava/util/function/Predicate;)Ljava/util/function/Predicate;

    move-result-object v0

    return-object v0

    :pswitch_1
    invoke-static {p0}, Lj$/util/function/Predicate$-CC;->$default$negate(Ljava/util/function/Predicate;)Ljava/util/function/Predicate;

    move-result-object v0

    return-object v0

    :pswitch_2
    invoke-static {p0}, Lj$/util/function/Predicate$-CC;->$default$negate(Ljava/util/function/Predicate;)Ljava/util/function/Predicate;

    move-result-object v0

    return-object v0

    :pswitch_3
    invoke-static {p0}, Lj$/util/function/Predicate$-CC;->$default$negate(Ljava/util/function/Predicate;)Ljava/util/function/Predicate;

    move-result-object v0

    return-object v0

    :pswitch_4
    invoke-static {p0}, Lj$/util/function/Predicate$-CC;->$default$negate(Ljava/util/function/Predicate;)Ljava/util/function/Predicate;

    move-result-object v0

    return-object v0

    :pswitch_5
    invoke-static {p0}, Lj$/util/function/Predicate$-CC;->$default$negate(Ljava/util/function/Predicate;)Ljava/util/function/Predicate;

    move-result-object v0

    return-object v0

    :pswitch_6
    invoke-static {p0}, Lj$/util/function/Predicate$-CC;->$default$negate(Ljava/util/function/Predicate;)Ljava/util/function/Predicate;

    move-result-object v0

    return-object v0

    :pswitch_7
    invoke-static {p0}, Lj$/util/function/Predicate$-CC;->$default$negate(Ljava/util/function/Predicate;)Ljava/util/function/Predicate;

    move-result-object v0

    return-object v0

    :pswitch_8
    invoke-static {p0}, Lj$/util/function/Predicate$-CC;->$default$negate(Ljava/util/function/Predicate;)Ljava/util/function/Predicate;

    move-result-object v0

    return-object v0

    :pswitch_9
    invoke-static {p0}, Lj$/util/function/Predicate$-CC;->$default$negate(Ljava/util/function/Predicate;)Ljava/util/function/Predicate;

    move-result-object v0

    return-object v0

    :pswitch_a
    invoke-static {p0}, Lj$/util/function/Predicate$-CC;->$default$negate(Ljava/util/function/Predicate;)Ljava/util/function/Predicate;

    move-result-object v0

    return-object v0

    :pswitch_b
    invoke-static {p0}, Lj$/util/function/Predicate$-CC;->$default$negate(Ljava/util/function/Predicate;)Ljava/util/function/Predicate;

    move-result-object v0

    return-object v0

    :pswitch_c
    invoke-static {p0}, Lj$/util/function/Predicate$-CC;->$default$negate(Ljava/util/function/Predicate;)Ljava/util/function/Predicate;

    move-result-object v0

    return-object v0

    :pswitch_d
    invoke-static {p0}, Lj$/util/function/Predicate$-CC;->$default$negate(Ljava/util/function/Predicate;)Ljava/util/function/Predicate;

    move-result-object v0

    return-object v0

    :pswitch_e
    invoke-static {p0}, Lj$/util/function/Predicate$-CC;->$default$negate(Ljava/util/function/Predicate;)Ljava/util/function/Predicate;

    move-result-object v0

    return-object v0

    :pswitch_f
    invoke-static {p0}, Lj$/util/function/Predicate$-CC;->$default$negate(Ljava/util/function/Predicate;)Ljava/util/function/Predicate;

    move-result-object v0

    return-object v0

    :pswitch_10
    invoke-static {p0}, Lj$/util/function/Predicate$-CC;->$default$negate(Ljava/util/function/Predicate;)Ljava/util/function/Predicate;

    move-result-object v0

    return-object v0

    :pswitch_11
    invoke-static {p0}, Lj$/util/function/Predicate$-CC;->$default$negate(Ljava/util/function/Predicate;)Ljava/util/function/Predicate;

    move-result-object v0

    return-object v0

    :pswitch_12
    invoke-static {p0}, Lj$/util/function/Predicate$-CC;->$default$negate(Ljava/util/function/Predicate;)Ljava/util/function/Predicate;

    move-result-object v0

    return-object v0

    :pswitch_13
    invoke-static {p0}, Lj$/util/function/Predicate$-CC;->$default$negate(Ljava/util/function/Predicate;)Ljava/util/function/Predicate;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
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

.method public final synthetic or(Ljava/util/function/Predicate;)Ljava/util/function/Predicate;
    .locals 1

    iget v0, p0, Lcdm;->u:I

    packed-switch v0, :pswitch_data_0

    invoke-static {p0, p1}, Lj$/util/function/Predicate$-CC;->$default$or(Ljava/util/function/Predicate;Ljava/util/function/Predicate;)Ljava/util/function/Predicate;

    move-result-object p1

    return-object p1

    :pswitch_0
    invoke-static {p0, p1}, Lj$/util/function/Predicate$-CC;->$default$or(Ljava/util/function/Predicate;Ljava/util/function/Predicate;)Ljava/util/function/Predicate;

    move-result-object p1

    return-object p1

    :pswitch_1
    invoke-static {p0, p1}, Lj$/util/function/Predicate$-CC;->$default$or(Ljava/util/function/Predicate;Ljava/util/function/Predicate;)Ljava/util/function/Predicate;

    move-result-object p1

    return-object p1

    :pswitch_2
    invoke-static {p0, p1}, Lj$/util/function/Predicate$-CC;->$default$or(Ljava/util/function/Predicate;Ljava/util/function/Predicate;)Ljava/util/function/Predicate;

    move-result-object p1

    return-object p1

    :pswitch_3
    invoke-static {p0, p1}, Lj$/util/function/Predicate$-CC;->$default$or(Ljava/util/function/Predicate;Ljava/util/function/Predicate;)Ljava/util/function/Predicate;

    move-result-object p1

    return-object p1

    :pswitch_4
    invoke-static {p0, p1}, Lj$/util/function/Predicate$-CC;->$default$or(Ljava/util/function/Predicate;Ljava/util/function/Predicate;)Ljava/util/function/Predicate;

    move-result-object p1

    return-object p1

    :pswitch_5
    invoke-static {p0, p1}, Lj$/util/function/Predicate$-CC;->$default$or(Ljava/util/function/Predicate;Ljava/util/function/Predicate;)Ljava/util/function/Predicate;

    move-result-object p1

    return-object p1

    :pswitch_6
    invoke-static {p0, p1}, Lj$/util/function/Predicate$-CC;->$default$or(Ljava/util/function/Predicate;Ljava/util/function/Predicate;)Ljava/util/function/Predicate;

    move-result-object p1

    return-object p1

    :pswitch_7
    invoke-static {p0, p1}, Lj$/util/function/Predicate$-CC;->$default$or(Ljava/util/function/Predicate;Ljava/util/function/Predicate;)Ljava/util/function/Predicate;

    move-result-object p1

    return-object p1

    :pswitch_8
    invoke-static {p0, p1}, Lj$/util/function/Predicate$-CC;->$default$or(Ljava/util/function/Predicate;Ljava/util/function/Predicate;)Ljava/util/function/Predicate;

    move-result-object p1

    return-object p1

    :pswitch_9
    invoke-static {p0, p1}, Lj$/util/function/Predicate$-CC;->$default$or(Ljava/util/function/Predicate;Ljava/util/function/Predicate;)Ljava/util/function/Predicate;

    move-result-object p1

    return-object p1

    :pswitch_a
    invoke-static {p0, p1}, Lj$/util/function/Predicate$-CC;->$default$or(Ljava/util/function/Predicate;Ljava/util/function/Predicate;)Ljava/util/function/Predicate;

    move-result-object p1

    return-object p1

    :pswitch_b
    invoke-static {p0, p1}, Lj$/util/function/Predicate$-CC;->$default$or(Ljava/util/function/Predicate;Ljava/util/function/Predicate;)Ljava/util/function/Predicate;

    move-result-object p1

    return-object p1

    :pswitch_c
    invoke-static {p0, p1}, Lj$/util/function/Predicate$-CC;->$default$or(Ljava/util/function/Predicate;Ljava/util/function/Predicate;)Ljava/util/function/Predicate;

    move-result-object p1

    return-object p1

    :pswitch_d
    invoke-static {p0, p1}, Lj$/util/function/Predicate$-CC;->$default$or(Ljava/util/function/Predicate;Ljava/util/function/Predicate;)Ljava/util/function/Predicate;

    move-result-object p1

    return-object p1

    :pswitch_e
    invoke-static {p0, p1}, Lj$/util/function/Predicate$-CC;->$default$or(Ljava/util/function/Predicate;Ljava/util/function/Predicate;)Ljava/util/function/Predicate;

    move-result-object p1

    return-object p1

    :pswitch_f
    invoke-static {p0, p1}, Lj$/util/function/Predicate$-CC;->$default$or(Ljava/util/function/Predicate;Ljava/util/function/Predicate;)Ljava/util/function/Predicate;

    move-result-object p1

    return-object p1

    :pswitch_10
    invoke-static {p0, p1}, Lj$/util/function/Predicate$-CC;->$default$or(Ljava/util/function/Predicate;Ljava/util/function/Predicate;)Ljava/util/function/Predicate;

    move-result-object p1

    return-object p1

    :pswitch_11
    invoke-static {p0, p1}, Lj$/util/function/Predicate$-CC;->$default$or(Ljava/util/function/Predicate;Ljava/util/function/Predicate;)Ljava/util/function/Predicate;

    move-result-object p1

    return-object p1

    :pswitch_12
    invoke-static {p0, p1}, Lj$/util/function/Predicate$-CC;->$default$or(Ljava/util/function/Predicate;Ljava/util/function/Predicate;)Ljava/util/function/Predicate;

    move-result-object p1

    return-object p1

    :pswitch_13
    invoke-static {p0, p1}, Lj$/util/function/Predicate$-CC;->$default$or(Ljava/util/function/Predicate;Ljava/util/function/Predicate;)Ljava/util/function/Predicate;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
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

.method public final test(Ljava/lang/Object;)Z
    .locals 6

    iget v0, p0, Lcdm;->u:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    check-cast p1, Lgeh;

    sget-object v0, Lika;->m:Lika;

    invoke-interface {p1}, Lgeh;->b()Lika;

    move-result-object v3

    invoke-virtual {v0, v3}, Lika;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-interface {p1}, Lgeh;->F()Z

    move-result p1

    if-nez p1, :cond_10

    return v2

    :pswitch_0
    check-cast p1, Lgeh;

    invoke-interface {p1}, Lgeh;->F()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lgeh;->C()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lika;->m:Lika;

    invoke-interface {p1}, Lgeh;->b()Lika;

    move-result-object p1

    invoke-virtual {v0, p1}, Lika;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    return v2

    :cond_0
    return v1

    :pswitch_1
    check-cast p1, Lhag;

    invoke-virtual {p1}, Lhag;->c()Ljava/lang/String;

    move-result-object p1

    const-string v0, "pref_category_contact_us"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :pswitch_2
    check-cast p1, Ljava/util/Map$Entry;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lept;

    invoke-virtual {p1}, Lept;->f()Z

    move-result p1

    return p1

    :pswitch_3
    check-cast p1, Ldyi;

    iget-object p1, p1, Ldyi;->c:Lmqp;

    invoke-virtual {p1}, Lmqp;->g()Z

    move-result p1

    return p1

    :pswitch_4
    check-cast p1, Ldxy;

    iget p1, p1, Ldxy;->b:F

    const v0, 0x3f4ccccd    # 0.8f

    cmpl-float p1, p1, v0

    if-lez p1, :cond_1

    return v2

    :cond_1
    return v1

    :pswitch_5
    check-cast p1, Lgeh;

    invoke-interface {p1}, Lgeh;->b()Lika;

    move-result-object v0

    sget-object v3, Lika;->g:Lika;

    invoke-virtual {v3, v0}, Lika;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    invoke-interface {p1}, Lgeh;->F()Z

    move-result p1

    if-eqz p1, :cond_3

    sget-object p1, Lika;->b:Lika;

    invoke-virtual {p1, v0}, Lika;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    sget-object p1, Lika;->m:Lika;

    invoke-virtual {p1, v0}, Lika;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    return v1

    :cond_3
    goto :goto_1

    :cond_4
    :goto_0
    const/4 v1, 0x1

    :goto_1
    return v1

    :pswitch_6
    check-cast p1, Lgeh;

    invoke-interface {p1}, Lgeh;->b()Lika;

    move-result-object v0

    sget-object v3, Lika;->g:Lika;

    if-eq v0, v3, :cond_6

    invoke-interface {p1}, Lgeh;->F()Z

    move-result p1

    if-eqz p1, :cond_7

    sget-object p1, Lika;->b:Lika;

    if-eq v0, p1, :cond_6

    sget-object p1, Lika;->m:Lika;

    if-ne v0, p1, :cond_5

    goto :goto_2

    :cond_5
    return v1

    :cond_6
    :goto_2
    const/4 v1, 0x1

    :cond_7
    return v1

    :pswitch_7
    check-cast p1, Lhyb;

    iget-boolean p1, p1, Lhyb;->b:Z

    return p1

    :pswitch_8
    check-cast p1, Lcom/google/android/apps/camera/stats/timing/CameraActivityTiming;

    return v2

    :pswitch_9
    check-cast p1, Lhke;

    invoke-static {}, Lhkd;->values()[Lhkd;

    move-result-object v0

    array-length v3, v0

    const/4 v4, 0x0

    :goto_3
    if-ge v4, v3, :cond_9

    aget-object v5, v0, v4

    invoke-virtual {p1, v5}, Lhkh;->k(Ljava/lang/Enum;)Z

    move-result v5

    if-eqz v5, :cond_8

    const/4 v1, 0x1

    goto :goto_4

    :cond_8
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_9
    :goto_4
    return v1

    :pswitch_a
    check-cast p1, Lj$/util/Optional;

    invoke-virtual {p1}, Lj$/util/Optional;->isPresent()Z

    move-result p1

    return p1

    :pswitch_b
    check-cast p1, Lddo;

    iget p1, p1, Lddo;->l:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_a

    return v2

    :cond_a
    return v1

    :pswitch_c
    check-cast p1, Lddo;

    iget-boolean p1, p1, Lddo;->i:Z

    return p1

    :pswitch_d
    check-cast p1, Ldbe;

    iget-boolean p1, p1, Ldbe;->b:Z

    return p1

    :pswitch_e
    check-cast p1, Lgeh;

    invoke-interface {p1}, Lgeh;->b()Lika;

    move-result-object v0

    sget-object v3, Lika;->c:Lika;

    invoke-virtual {v3, v0}, Lika;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_c

    sget-object v3, Lika;->i:Lika;

    invoke-virtual {v3, v0}, Lika;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    const/4 v0, 0x1

    goto :goto_5

    :cond_b
    const/4 v0, 0x0

    goto :goto_5

    :cond_c
    const/4 v0, 0x1

    :goto_5
    invoke-interface {p1}, Lgeh;->F()Z

    move-result p1

    if-eqz p1, :cond_d

    if-eqz v0, :cond_d

    return v2

    :cond_d
    return v1

    :pswitch_f
    check-cast p1, Lmqp;

    invoke-virtual {p1}, Lmqp;->g()Z

    move-result p1

    return p1

    :pswitch_10
    check-cast p1, Ljwu;

    invoke-virtual {p1}, Ljwu;->b()Lkaf;

    move-result-object p1

    invoke-static {p1}, Ljzr;->j(Lkaf;)Ljzr;

    move-result-object p1

    sget-object v0, Ljzr;->c:Ljzr;

    invoke-virtual {p1, v0}, Ljzr;->m(Ljzr;)Z

    move-result p1

    if-nez p1, :cond_e

    return v2

    :cond_e
    return v1

    :pswitch_11
    check-cast p1, Ljwu;

    invoke-virtual {p1}, Ljwu;->b()Lkaf;

    move-result-object p1

    invoke-static {p1}, Ljzr;->j(Lkaf;)Ljzr;

    move-result-object p1

    sget-object v0, Ljzr;->c:Ljzr;

    invoke-virtual {p1, v0}, Ljzr;->m(Ljzr;)Z

    move-result p1

    return p1

    :pswitch_12
    check-cast p1, Lkbo;

    invoke-static {p1}, Lkbo;->d(Lkbo;)Z

    move-result p1

    if-nez p1, :cond_f

    return v2

    :cond_f
    return v1

    :pswitch_13
    check-cast p1, Lklm;

    invoke-static {p1}, Lkbo;->b(Lklm;)Lkbo;

    move-result-object p1

    invoke-static {p1}, Lkbo;->d(Lkbo;)Z

    move-result p1

    return p1

    :cond_10
    return v1

    :pswitch_data_0
    .packed-switch 0x0
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
