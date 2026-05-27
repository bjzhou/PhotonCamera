.class public final Lnyb;
.super Ljava/lang/Object;

# interfaces
.implements Lnyo;


# static fields
.field private static final a:[I

.field private static final b:Lsun/misc/Unsafe;


# instance fields
.field private final c:[I

.field private final d:[Ljava/lang/Object;

.field private final e:I

.field private final f:I

.field private final g:Lnxy;

.field private final h:Z

.field private final i:Z

.field private final j:Z

.field private final k:[I

.field private final l:I

.field private final m:I

.field private final n:Lnxo;

.field private final o:Lkwp;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [I

    sput-object v0, Lnyb;->a:[I

    invoke-static {}, Lnzi;->j()Lsun/misc/Unsafe;

    move-result-object v0

    sput-object v0, Lnyb;->b:Lsun/misc/Unsafe;

    return-void
.end method

.method private constructor <init>([I[Ljava/lang/Object;IILnxy;Z[IIILnxo;Lkwp;Lkwp;[B[B[B[B[B)V
    .locals 4

    move-object v0, p0

    move-object v1, p5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v2, p1

    iput-object v2, v0, Lnyb;->c:[I

    move-object v2, p2

    iput-object v2, v0, Lnyb;->d:[Ljava/lang/Object;

    move v2, p3

    iput v2, v0, Lnyb;->e:I

    move v2, p4

    iput v2, v0, Lnyb;->f:I

    instance-of v2, v1, Lnws;

    iput-boolean v2, v0, Lnyb;->i:Z

    move v2, p6

    iput-boolean v2, v0, Lnyb;->j:Z

    const/4 v2, 0x0

    if-eqz p12, :cond_0

    instance-of v3, v1, Lnwq;

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    :goto_0
    iput-boolean v2, v0, Lnyb;->h:Z

    move-object v2, p7

    iput-object v2, v0, Lnyb;->k:[I

    move v2, p8

    iput v2, v0, Lnyb;->l:I

    move v2, p9

    iput v2, v0, Lnyb;->m:I

    move-object v2, p10

    iput-object v2, v0, Lnyb;->n:Lnxo;

    move-object v2, p11

    iput-object v2, v0, Lnyb;->o:Lkwp;

    iput-object v1, v0, Lnyb;->g:Lnxy;

    return-void
.end method

.method private static A(I)J
    .locals 2

    const v0, 0xfffff

    and-int/2addr p0, v0

    int-to-long v0, p0

    return-wide v0
.end method

.method private static B(Ljava/lang/Object;J)J
    .locals 0

    invoke-static {p0, p1, p2}, Lnzi;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    return-wide p0
.end method

.method private final C(I)Lnww;
    .locals 1

    div-int/lit8 p1, p1, 0x3

    add-int/2addr p1, p1

    iget-object v0, p0, Lnyb;->d:[Ljava/lang/Object;

    add-int/lit8 p1, p1, 0x1

    aget-object p1, v0, p1

    check-cast p1, Lnww;

    return-object p1
.end method

.method private final D(I)Lnyo;
    .locals 3

    iget-object v0, p0, Lnyb;->d:[Ljava/lang/Object;

    div-int/lit8 p1, p1, 0x3

    add-int/2addr p1, p1

    aget-object v0, v0, p1

    check-cast v0, Lnyo;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    sget-object v0, Lnyh;->a:Lnyh;

    iget-object v1, p0, Lnyb;->d:[Ljava/lang/Object;

    add-int/lit8 v2, p1, 0x1

    aget-object v1, v1, v2

    check-cast v1, Ljava/lang/Class;

    invoke-virtual {v0, v1}, Lnyh;->a(Ljava/lang/Class;)Lnyo;

    move-result-object v0

    iget-object v1, p0, Lnyb;->d:[Ljava/lang/Object;

    aput-object v0, v1, p1

    return-object v0
.end method

.method private final E(I)Ljava/lang/Object;
    .locals 1

    div-int/lit8 p1, p1, 0x3

    iget-object v0, p0, Lnyb;->d:[Ljava/lang/Object;

    add-int/2addr p1, p1

    aget-object p1, v0, p1

    return-object p1
.end method

.method private final F(Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 3

    invoke-direct {p0, p2}, Lnyb;->D(I)Lnyo;

    move-result-object v0

    invoke-direct {p0, p2}, Lnyb;->z(I)I

    move-result v1

    invoke-static {v1}, Lnyb;->A(I)J

    move-result-wide v1

    invoke-direct {p0, p1, p2}, Lnyb;->T(Ljava/lang/Object;I)Z

    move-result p2

    if-nez p2, :cond_0

    invoke-interface {v0}, Lnyo;->e()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    sget-object p2, Lnyb;->b:Lsun/misc/Unsafe;

    invoke-virtual {p2, p1, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lnyb;->W(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    return-object p1

    :cond_1
    invoke-interface {v0}, Lnyo;->e()Ljava/lang/Object;

    move-result-object p2

    if-eqz p1, :cond_2

    invoke-interface {v0, p2, p1}, Lnyo;->g(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    return-object p2
.end method

.method private final G(Ljava/lang/Object;II)Ljava/lang/Object;
    .locals 3

    invoke-direct {p0, p3}, Lnyb;->D(I)Lnyo;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3}, Lnyb;->X(Ljava/lang/Object;II)Z

    move-result p2

    if-nez p2, :cond_0

    invoke-interface {v0}, Lnyo;->e()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    sget-object p2, Lnyb;->b:Lsun/misc/Unsafe;

    invoke-direct {p0, p3}, Lnyb;->z(I)I

    move-result p3

    invoke-static {p3}, Lnyb;->A(I)J

    move-result-wide v1

    invoke-virtual {p2, p1, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lnyb;->W(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    return-object p1

    :cond_1
    invoke-interface {v0}, Lnyo;->e()Ljava/lang/Object;

    move-result-object p2

    if-eqz p1, :cond_2

    invoke-interface {v0, p2, p1}, Lnyo;->g(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    return-object p2
.end method

.method private static H(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 5

    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Field "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " for "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " not found. Known fields are "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw v1

    :goto_2
    goto :goto_1
.end method

.method private static I(Ljava/lang/Object;J)Ljava/util/List;
    .locals 0

    invoke-static {p0, p1, p2}, Lnzi;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method private static J(Ljava/lang/Object;)V
    .locals 2

    invoke-static {p0}, Lnyb;->W(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "Mutating immutable message: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final K(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 5

    invoke-direct {p0, p2, p3}, Lnyb;->T(Ljava/lang/Object;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p3}, Lnyb;->z(I)I

    move-result v0

    invoke-static {v0}, Lnyb;->A(I)J

    move-result-wide v0

    sget-object v2, Lnyb;->b:Lsun/misc/Unsafe;

    invoke-virtual {v2, p2, v0, v1}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-direct {p0, p3}, Lnyb;->D(I)Lnyo;

    move-result-object p2

    invoke-direct {p0, p1, p3}, Lnyb;->T(Ljava/lang/Object;I)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-static {v3}, Lnyb;->W(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v2, p1, v0, v1, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_0

    :cond_1
    invoke-interface {p2}, Lnyo;->e()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {p2, v4, v3}, Lnyo;->g(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, p1, v0, v1, v4}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :goto_0
    invoke-direct {p0, p1, p3}, Lnyb;->N(Ljava/lang/Object;I)V

    return-void

    :cond_2
    invoke-virtual {v2, p1, v0, v1}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p3

    invoke-static {p3}, Lnyb;->W(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-interface {p2}, Lnyo;->e()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {p2, v4, p3}, Lnyo;->g(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, p1, v0, v1, v4}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    move-object p3, v4

    :cond_3
    invoke-interface {p2, p3, v3}, Lnyo;->g(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p0, p3}, Lnyb;->p(I)I

    move-result p3

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Source subfield "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " is present but null: "

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final L(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 6

    invoke-direct {p0, p3}, Lnyb;->p(I)I

    move-result v0

    invoke-direct {p0, p2, v0, p3}, Lnyb;->X(Ljava/lang/Object;II)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p3}, Lnyb;->z(I)I

    move-result v1

    invoke-static {v1}, Lnyb;->A(I)J

    move-result-wide v1

    sget-object v3, Lnyb;->b:Lsun/misc/Unsafe;

    invoke-virtual {v3, p2, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-direct {p0, p3}, Lnyb;->D(I)Lnyo;

    move-result-object p2

    invoke-direct {p0, p1, v0, p3}, Lnyb;->X(Ljava/lang/Object;II)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-static {v4}, Lnyb;->W(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v3, p1, v1, v2, v4}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_0

    :cond_1
    invoke-interface {p2}, Lnyo;->e()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {p2, v5, v4}, Lnyo;->g(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v3, p1, v1, v2, v5}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :goto_0
    invoke-direct {p0, p1, v0, p3}, Lnyb;->O(Ljava/lang/Object;II)V

    return-void

    :cond_2
    invoke-virtual {v3, p1, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p3

    invoke-static {p3}, Lnyb;->W(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-interface {p2}, Lnyo;->e()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p2, v0, p3}, Lnyo;->g(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v3, p1, v1, v2, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    move-object p3, v0

    :cond_3
    invoke-interface {p2, p3, v4}, Lnyo;->g(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p0, p3}, Lnyb;->p(I)I

    move-result p3

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Source subfield "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " is present but null: "

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final M(Ljava/lang/Object;ILnyk;)V
    .locals 2

    invoke-static {p2}, Lnyb;->S(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2}, Lnyb;->A(I)J

    move-result-wide v0

    invoke-interface {p3}, Lnyk;->v()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, v0, v1, p2}, Lnzi;->u(Ljava/lang/Object;JLjava/lang/Object;)V

    return-void

    :cond_0
    iget-boolean v0, p0, Lnyb;->i:Z

    if-eqz v0, :cond_1

    invoke-static {p2}, Lnyb;->A(I)J

    move-result-wide v0

    invoke-interface {p3}, Lnyk;->u()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, v0, v1, p2}, Lnzi;->u(Ljava/lang/Object;JLjava/lang/Object;)V

    return-void

    :cond_1
    invoke-static {p2}, Lnyb;->A(I)J

    move-result-wide v0

    invoke-interface {p3}, Lnyk;->o()Lnvt;

    move-result-object p2

    invoke-static {p1, v0, v1, p2}, Lnzi;->u(Ljava/lang/Object;JLjava/lang/Object;)V

    return-void
.end method

.method private final N(Ljava/lang/Object;I)V
    .locals 5

    invoke-direct {p0, p2}, Lnyb;->w(I)I

    move-result p2

    const v0, 0xfffff

    and-int/2addr v0, p2

    int-to-long v0, v0

    const-wide/32 v2, 0xfffff

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    return-void

    :cond_0
    ushr-int/lit8 p2, p2, 0x14

    invoke-static {p1, v0, v1}, Lnzi;->d(Ljava/lang/Object;J)I

    move-result v2

    const/4 v3, 0x1

    shl-int p2, v3, p2

    or-int/2addr p2, v2

    invoke-static {p1, v0, v1, p2}, Lnzi;->s(Ljava/lang/Object;JI)V

    return-void
.end method

.method private final O(Ljava/lang/Object;II)V
    .locals 2

    invoke-direct {p0, p3}, Lnyb;->w(I)I

    move-result p3

    const v0, 0xfffff

    and-int/2addr p3, v0

    int-to-long v0, p3

    invoke-static {p1, v0, v1, p2}, Lnzi;->s(Ljava/lang/Object;JI)V

    return-void
.end method

.method private final P(Ljava/lang/Object;ILjava/lang/Object;)V
    .locals 3

    sget-object v0, Lnyb;->b:Lsun/misc/Unsafe;

    invoke-direct {p0, p2}, Lnyb;->z(I)I

    move-result v1

    invoke-static {v1}, Lnyb;->A(I)J

    move-result-wide v1

    invoke-virtual {v0, p1, v1, v2, p3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-direct {p0, p1, p2}, Lnyb;->N(Ljava/lang/Object;I)V

    return-void
.end method

.method private final Q(Ljava/lang/Object;IILjava/lang/Object;)V
    .locals 3

    sget-object v0, Lnyb;->b:Lsun/misc/Unsafe;

    invoke-direct {p0, p3}, Lnyb;->z(I)I

    move-result v1

    invoke-static {v1}, Lnyb;->A(I)J

    move-result-wide v1

    invoke-virtual {v0, p1, v1, v2, p4}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-direct {p0, p1, p2, p3}, Lnyb;->O(Ljava/lang/Object;II)V

    return-void
.end method

.method private final R(Ljava/lang/Object;Ljava/lang/Object;I)Z
    .locals 0

    invoke-direct {p0, p1, p3}, Lnyb;->T(Ljava/lang/Object;I)Z

    move-result p1

    invoke-direct {p0, p2, p3}, Lnyb;->T(Ljava/lang/Object;I)Z

    move-result p2

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private static S(I)Z
    .locals 1

    const/high16 v0, 0x20000000

    and-int/2addr p0, v0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private final T(Ljava/lang/Object;I)Z
    .locals 8

    invoke-direct {p0, p2}, Lnyb;->w(I)I

    move-result v0

    const v1, 0xfffff

    and-int/2addr v1, v0

    int-to-long v1, v1

    const-wide/32 v3, 0xfffff

    const/4 v5, 0x0

    const/4 v6, 0x1

    cmp-long v7, v1, v3

    if-nez v7, :cond_14

    invoke-direct {p0, p2}, Lnyb;->z(I)I

    move-result p2

    invoke-static {p2}, Lnyb;->A(I)J

    move-result-wide v0

    invoke-static {p2}, Lnyb;->y(I)I

    move-result p2

    const-wide/16 v2, 0x0

    packed-switch p2, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    :pswitch_0
    invoke-static {p1, v0, v1}, Lnzi;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    return v6

    :cond_0
    return v5

    :pswitch_1
    invoke-static {p1, v0, v1}, Lnzi;->f(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long v0, p1, v2

    if-eqz v0, :cond_1

    return v6

    :cond_1
    return v5

    :pswitch_2
    invoke-static {p1, v0, v1}, Lnzi;->d(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_2

    return v6

    :cond_2
    return v5

    :pswitch_3
    invoke-static {p1, v0, v1}, Lnzi;->f(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long v0, p1, v2

    if-eqz v0, :cond_3

    return v6

    :cond_3
    return v5

    :pswitch_4
    invoke-static {p1, v0, v1}, Lnzi;->d(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_4

    return v6

    :cond_4
    return v5

    :pswitch_5
    invoke-static {p1, v0, v1}, Lnzi;->d(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_5

    return v6

    :cond_5
    return v5

    :pswitch_6
    invoke-static {p1, v0, v1}, Lnzi;->d(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_6

    return v6

    :cond_6
    return v5

    :pswitch_7
    sget-object p2, Lnvt;->b:Lnvt;

    invoke-static {p1, v0, v1}, Lnzi;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p2, p1}, Lnvt;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    return v6

    :cond_7
    return v5

    :pswitch_8
    invoke-static {p1, v0, v1}, Lnzi;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_8

    return v6

    :cond_8
    return v5

    :pswitch_9
    invoke-static {p1, v0, v1}, Lnzi;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    instance-of p2, p1, Ljava/lang/String;

    if-eqz p2, :cond_a

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_9

    return v6

    :cond_9
    return v5

    :cond_a
    instance-of p2, p1, Lnvt;

    if-eqz p2, :cond_c

    sget-object p2, Lnvt;->b:Lnvt;

    invoke-virtual {p2, p1}, Lnvt;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b

    return v6

    :cond_b
    return v5

    :cond_c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    :pswitch_a
    invoke-static {p1, v0, v1}, Lnzi;->w(Ljava/lang/Object;J)Z

    move-result p1

    return p1

    :pswitch_b
    invoke-static {p1, v0, v1}, Lnzi;->d(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_d

    return v6

    :cond_d
    return v5

    :pswitch_c
    invoke-static {p1, v0, v1}, Lnzi;->f(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long v0, p1, v2

    if-eqz v0, :cond_e

    return v6

    :cond_e
    return v5

    :pswitch_d
    invoke-static {p1, v0, v1}, Lnzi;->d(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_f

    return v6

    :cond_f
    return v5

    :pswitch_e
    invoke-static {p1, v0, v1}, Lnzi;->f(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long v0, p1, v2

    if-eqz v0, :cond_10

    return v6

    :cond_10
    return v5

    :pswitch_f
    invoke-static {p1, v0, v1}, Lnzi;->f(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long v0, p1, v2

    if-eqz v0, :cond_11

    return v6

    :cond_11
    return v5

    :pswitch_10
    invoke-static {p1, v0, v1}, Lnzi;->c(Ljava/lang/Object;J)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p1

    if-eqz p1, :cond_12

    return v6

    :cond_12
    return v5

    :pswitch_11
    invoke-static {p1, v0, v1}, Lnzi;->b(Ljava/lang/Object;J)D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide p1

    cmp-long v0, p1, v2

    if-eqz v0, :cond_13

    return v6

    :cond_13
    return v5

    :cond_14
    ushr-int/lit8 p2, v0, 0x14

    shl-int p2, v6, p2

    invoke-static {p1, v1, v2}, Lnzi;->d(Ljava/lang/Object;J)I

    move-result p1

    and-int/2addr p1, p2

    if-eqz p1, :cond_15

    return v6

    :cond_15
    return v5

    nop

    :pswitch_data_0
    .packed-switch 0x0
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

.method private final U(Ljava/lang/Object;IIII)Z
    .locals 1

    const v0, 0xfffff

    if-ne p3, v0, :cond_0

    invoke-direct {p0, p1, p2}, Lnyb;->T(Ljava/lang/Object;I)Z

    move-result p1

    return p1

    :cond_0
    and-int p1, p4, p5

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private static V(Ljava/lang/Object;ILnyo;)Z
    .locals 2

    invoke-static {p1}, Lnyb;->A(I)J

    move-result-wide v0

    invoke-static {p0, v0, v1}, Lnzi;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    invoke-interface {p2, p0}, Lnyo;->k(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static W(Ljava/lang/Object;)Z
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    instance-of v0, p0, Lnws;

    if-eqz v0, :cond_1

    check-cast p0, Lnws;

    invoke-virtual {p0}, Lnws;->ac()Z

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method private final X(Ljava/lang/Object;II)Z
    .locals 2

    invoke-direct {p0, p3}, Lnyb;->w(I)I

    move-result p3

    const v0, 0xfffff

    and-int/2addr p3, v0

    int-to-long v0, p3

    invoke-static {p1, v0, v1}, Lnzi;->d(Ljava/lang/Object;J)I

    move-result p1

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private static Y(Ljava/lang/Object;J)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lnzi;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method private static final Z([BIILnzl;Ljava/lang/Class;Lnvj;)I
    .locals 1

    sget-object v0, Lnzl;->a:Lnzl;

    invoke-virtual {p3}, Lnzl;->ordinal()I

    move-result p3

    packed-switch p3, :pswitch_data_0

    :pswitch_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "unsupported field type."

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_1
    invoke-static {p0, p1, p5}, Lkwp;->ar([BILnvj;)I

    move-result p0

    iget-wide p1, p5, Lnvj;->b:J

    invoke-static {p1, p2}, Lnvy;->H(J)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p5, Lnvj;->c:Ljava/lang/Object;

    goto/16 :goto_1

    :pswitch_2
    invoke-static {p0, p1, p5}, Lkwp;->ao([BILnvj;)I

    move-result p0

    iget p1, p5, Lnvj;->a:I

    invoke-static {p1}, Lnvy;->F(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p5, Lnvj;->c:Ljava/lang/Object;

    goto/16 :goto_1

    :pswitch_3
    invoke-static {p0, p1, p5}, Lkwp;->af([BILnvj;)I

    move-result p0

    goto/16 :goto_1

    :pswitch_4
    sget-object p3, Lnyh;->a:Lnyh;

    invoke-virtual {p3, p4}, Lnyh;->a(Ljava/lang/Class;)Lnyo;

    move-result-object p3

    invoke-static {p3, p0, p1, p2, p5}, Lkwp;->ai(Lnyo;[BIILnvj;)I

    move-result p0

    goto :goto_1

    :pswitch_5
    invoke-static {p0, p1, p5}, Lkwp;->am([BILnvj;)I

    move-result p0

    goto :goto_1

    :pswitch_6
    invoke-static {p0, p1, p5}, Lkwp;->ar([BILnvj;)I

    move-result p0

    iget-wide p1, p5, Lnvj;->b:J

    const-wide/16 p3, 0x0

    cmp-long v0, p1, p3

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p5, Lnvj;->c:Ljava/lang/Object;

    goto :goto_1

    :pswitch_7
    invoke-static {p0, p1}, Lkwp;->ag([BI)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    iput-object p0, p5, Lnvj;->c:Ljava/lang/Object;

    add-int/lit8 p0, p1, 0x4

    goto :goto_1

    :pswitch_8
    invoke-static {p0, p1}, Lkwp;->av([BI)J

    move-result-wide p2

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    iput-object p0, p5, Lnvj;->c:Ljava/lang/Object;

    add-int/lit8 p0, p1, 0x8

    goto :goto_1

    :pswitch_9
    invoke-static {p0, p1, p5}, Lkwp;->ao([BILnvj;)I

    move-result p0

    iget p1, p5, Lnvj;->a:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p5, Lnvj;->c:Ljava/lang/Object;

    goto :goto_1

    :pswitch_a
    invoke-static {p0, p1, p5}, Lkwp;->ar([BILnvj;)I

    move-result p0

    iget-wide p1, p5, Lnvj;->b:J

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p5, Lnvj;->c:Ljava/lang/Object;

    goto :goto_1

    :pswitch_b
    invoke-static {p0, p1}, Lkwp;->ae([BI)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    iput-object p0, p5, Lnvj;->c:Ljava/lang/Object;

    add-int/lit8 p0, p1, 0x4

    goto :goto_1

    :pswitch_c
    invoke-static {p0, p1}, Lkwp;->ad([BI)D

    move-result-wide p2

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    iput-object p0, p5, Lnvj;->c:Ljava/lang/Object;

    add-int/lit8 p0, p1, 0x8

    :goto_1
    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_9
        :pswitch_9
        :pswitch_7
        :pswitch_8
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private static final aa(Ljava/lang/Object;)I
    .locals 0

    invoke-static {p0}, Lkwp;->N(Ljava/lang/Object;)Lnza;

    move-result-object p0

    invoke-virtual {p0}, Lnza;->a()I

    move-result p0

    return p0
.end method

.method private final ab(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    invoke-direct {p0, p2}, Lnyb;->p(I)I

    move-result v0

    invoke-direct {p0, p2}, Lnyb;->z(I)I

    move-result v1

    invoke-static {v1}, Lnyb;->A(I)J

    move-result-wide v1

    invoke-static {p1, v1, v2}, Lnzi;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    return-object p3

    :cond_0
    invoke-direct {p0, p2}, Lnyb;->C(I)Lnww;

    move-result-object v1

    if-nez v1, :cond_1

    return-object p3

    :cond_1
    check-cast p1, Lnxt;

    invoke-direct {p0, p2}, Lnyb;->E(I)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Lkwp;->az(Ljava/lang/Object;)Llhj;

    move-result-object p2

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v1, v3}, Lnww;->a(I)Z

    move-result v3

    if-nez v3, :cond_2

    if-nez p3, :cond_3

    invoke-static {p4}, Lkwp;->P(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    :cond_3
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-static {p2, v3, v4}, Llzz;->A(Llhj;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    sget-object v4, Lnvt;->b:Lnvt;

    new-array v3, v3, [B

    invoke-static {v3}, Lnwd;->ag([B)Lnwd;

    move-result-object v4

    :try_start_0
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v4, p2, v5, v2}, Llzz;->C(Lnwd;Llhj;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {v4, v3}, Lkwp;->ac(Lnwd;[B)Lnvt;

    move-result-object v2

    invoke-static {p3, v0, v2}, Lkwp;->L(Ljava/lang/Object;ILnvt;)V

    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :cond_4
    return-object p3
.end method

.method private final ac(Llzz;ILjava/lang/Object;I)V
    .locals 4

    if-eqz p3, :cond_0

    invoke-direct {p0, p4}, Lnyb;->E(I)Ljava/lang/Object;

    move-result-object p4

    invoke-static {p4}, Lkwp;->az(Ljava/lang/Object;)Llhj;

    move-result-object p4

    check-cast p3, Lnxt;

    iget-object v0, p1, Llzz;->a:Ljava/lang/Object;

    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    iget-object v1, p1, Llzz;->a:Ljava/lang/Object;

    check-cast v1, Lnwd;

    const/4 v2, 0x2

    invoke-virtual {v1, p2, v2}, Lnwd;->A(II)V

    iget-object v1, p1, Llzz;->a:Ljava/lang/Object;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-static {p4, v2, v3}, Llzz;->A(Llhj;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    check-cast v1, Lnwd;

    invoke-virtual {v1, v2}, Lnwd;->C(I)V

    iget-object v1, p1, Llzz;->a:Ljava/lang/Object;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v1, Lnwd;

    invoke-static {v1, p4, v2, v0}, Llzz;->C(Lnwd;Llhj;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static final ad(ILjava/lang/Object;Llzz;)V
    .locals 1

    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p2, p0, p1}, Llzz;->w(ILjava/lang/String;)V

    return-void

    :cond_0
    check-cast p1, Lnvt;

    invoke-virtual {p2, p0, p1}, Llzz;->h(ILnvt;)V

    return-void
.end method

.method private static final ae(Ljava/lang/Object;Llzz;)V
    .locals 0

    invoke-static {p0}, Lkwp;->N(Ljava/lang/Object;)Lnza;

    move-result-object p0

    invoke-virtual {p0, p1}, Lnza;->g(Llzz;)V

    return-void
.end method

.method static d(Ljava/lang/Object;)Lnza;
    .locals 2

    check-cast p0, Lnws;

    iget-object v0, p0, Lnws;->aJ:Lnza;

    sget-object v1, Lnza;->a:Lnza;

    if-ne v0, v1, :cond_0

    invoke-static {}, Lnza;->b()Lnza;

    move-result-object v0

    iput-object v0, p0, Lnws;->aJ:Lnza;

    :cond_0
    return-object v0
.end method

.method static m(Lnxv;Lnxo;Lkwp;Lkwp;)Lnyb;
    .locals 33

    move-object/from16 v0, p0

    instance-of v1, v0, Lnyj;

    if-eqz v1, :cond_34

    check-cast v0, Lnyj;

    invoke-virtual {v0}, Lnyj;->c()I

    move-result v1

    iget-object v2, v0, Lnyj;->b:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const v6, 0xd800

    if-lt v5, v6, :cond_0

    const/4 v5, 0x1

    :goto_0
    add-int/lit8 v8, v5, 0x1

    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-lt v5, v6, :cond_1

    move v5, v8

    goto :goto_0

    :cond_0
    const/4 v8, 0x1

    :cond_1
    add-int/lit8 v5, v8, 0x1

    invoke-virtual {v2, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-lt v8, v6, :cond_3

    and-int/lit16 v8, v8, 0x1fff

    const/16 v10, 0xd

    :goto_1
    add-int/lit8 v11, v5, 0x1

    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-lt v5, v6, :cond_2

    and-int/lit16 v5, v5, 0x1fff

    shl-int/2addr v5, v10

    or-int/2addr v8, v5

    add-int/lit8 v10, v10, 0xd

    move v5, v11

    goto :goto_1

    :cond_2
    shl-int/2addr v5, v10

    or-int/2addr v8, v5

    move v5, v11

    goto :goto_2

    :cond_3
    :goto_2
    if-nez v8, :cond_4

    sget-object v8, Lnyb;->a:[I

    move-object/from16 v17, v8

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v18, 0x0

    goto/16 :goto_13

    :cond_4
    add-int/lit8 v8, v5, 0x1

    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-lt v5, v6, :cond_6

    and-int/lit16 v5, v5, 0x1fff

    const/16 v10, 0xd

    :goto_3
    add-int/lit8 v11, v8, 0x1

    invoke-virtual {v2, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-lt v8, v6, :cond_5

    and-int/lit16 v8, v8, 0x1fff

    shl-int/2addr v8, v10

    or-int/2addr v5, v8

    add-int/lit8 v10, v10, 0xd

    move v8, v11

    goto :goto_3

    :cond_5
    shl-int/2addr v8, v10

    or-int/2addr v5, v8

    move v8, v11

    goto :goto_4

    :cond_6
    :goto_4
    add-int/lit8 v10, v8, 0x1

    invoke-virtual {v2, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-lt v8, v6, :cond_8

    and-int/lit16 v8, v8, 0x1fff

    const/16 v11, 0xd

    :goto_5
    add-int/lit8 v12, v10, 0x1

    invoke-virtual {v2, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-lt v10, v6, :cond_7

    and-int/lit16 v10, v10, 0x1fff

    shl-int/2addr v10, v11

    or-int/2addr v8, v10

    add-int/lit8 v11, v11, 0xd

    move v10, v12

    goto :goto_5

    :cond_7
    shl-int/2addr v10, v11

    or-int/2addr v8, v10

    move v10, v12

    goto :goto_6

    :cond_8
    :goto_6
    add-int/lit8 v11, v10, 0x1

    invoke-virtual {v2, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-lt v10, v6, :cond_a

    and-int/lit16 v10, v10, 0x1fff

    const/16 v12, 0xd

    :goto_7
    add-int/lit8 v13, v11, 0x1

    invoke-virtual {v2, v11}, Ljava/lang/String;->charAt(I)C

    move-result v11

    if-lt v11, v6, :cond_9

    and-int/lit16 v11, v11, 0x1fff

    shl-int/2addr v11, v12

    or-int/2addr v10, v11

    add-int/lit8 v12, v12, 0xd

    move v11, v13

    goto :goto_7

    :cond_9
    shl-int/2addr v11, v12

    or-int/2addr v10, v11

    move v11, v13

    goto :goto_8

    :cond_a
    :goto_8
    add-int/lit8 v12, v11, 0x1

    invoke-virtual {v2, v11}, Ljava/lang/String;->charAt(I)C

    move-result v11

    if-lt v11, v6, :cond_c

    and-int/lit16 v11, v11, 0x1fff

    const/16 v13, 0xd

    :goto_9
    add-int/lit8 v14, v12, 0x1

    invoke-virtual {v2, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    if-lt v12, v6, :cond_b

    and-int/lit16 v12, v12, 0x1fff

    shl-int/2addr v12, v13

    or-int/2addr v11, v12

    add-int/lit8 v13, v13, 0xd

    move v12, v14

    goto :goto_9

    :cond_b
    shl-int/2addr v12, v13

    or-int/2addr v11, v12

    move v12, v14

    goto :goto_a

    :cond_c
    :goto_a
    add-int/lit8 v13, v12, 0x1

    invoke-virtual {v2, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    if-lt v12, v6, :cond_e

    and-int/lit16 v12, v12, 0x1fff

    const/16 v14, 0xd

    :goto_b
    add-int/lit8 v15, v13, 0x1

    invoke-virtual {v2, v13}, Ljava/lang/String;->charAt(I)C

    move-result v13

    if-lt v13, v6, :cond_d

    and-int/lit16 v13, v13, 0x1fff

    shl-int/2addr v13, v14

    or-int/2addr v12, v13

    add-int/lit8 v14, v14, 0xd

    move v13, v15

    goto :goto_b

    :cond_d
    shl-int/2addr v13, v14

    or-int/2addr v12, v13

    move v13, v15

    goto :goto_c

    :cond_e
    :goto_c
    add-int/lit8 v14, v13, 0x1

    invoke-virtual {v2, v13}, Ljava/lang/String;->charAt(I)C

    move-result v13

    if-lt v13, v6, :cond_10

    and-int/lit16 v13, v13, 0x1fff

    const/16 v15, 0xd

    :goto_d
    add-int/lit8 v16, v14, 0x1

    invoke-virtual {v2, v14}, Ljava/lang/String;->charAt(I)C

    move-result v14

    if-lt v14, v6, :cond_f

    and-int/lit16 v14, v14, 0x1fff

    shl-int/2addr v14, v15

    or-int/2addr v13, v14

    add-int/lit8 v15, v15, 0xd

    move/from16 v14, v16

    goto :goto_d

    :cond_f
    shl-int/2addr v14, v15

    or-int/2addr v13, v14

    move/from16 v14, v16

    goto :goto_e

    :cond_10
    :goto_e
    add-int/lit8 v15, v14, 0x1

    invoke-virtual {v2, v14}, Ljava/lang/String;->charAt(I)C

    move-result v14

    if-lt v14, v6, :cond_12

    and-int/lit16 v14, v14, 0x1fff

    const/16 v16, 0xd

    :goto_f
    add-int/lit8 v17, v15, 0x1

    invoke-virtual {v2, v15}, Ljava/lang/String;->charAt(I)C

    move-result v15

    if-lt v15, v6, :cond_11

    and-int/lit16 v15, v15, 0x1fff

    shl-int v15, v15, v16

    or-int/2addr v14, v15

    add-int/lit8 v16, v16, 0xd

    move/from16 v15, v17

    goto :goto_f

    :cond_11
    shl-int v15, v15, v16

    or-int/2addr v14, v15

    move/from16 v15, v17

    goto :goto_10

    :cond_12
    :goto_10
    add-int/lit8 v16, v15, 0x1

    invoke-virtual {v2, v15}, Ljava/lang/String;->charAt(I)C

    move-result v15

    if-lt v15, v6, :cond_14

    and-int/lit16 v15, v15, 0x1fff

    move/from16 v4, v16

    const/16 v16, 0xd

    :goto_11
    add-int/lit8 v17, v4, 0x1

    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-lt v4, v6, :cond_13

    and-int/lit16 v4, v4, 0x1fff

    shl-int v4, v4, v16

    or-int/2addr v15, v4

    add-int/lit8 v16, v16, 0xd

    move/from16 v4, v17

    goto :goto_11

    :cond_13
    shl-int v4, v4, v16

    or-int/2addr v15, v4

    move/from16 v16, v17

    goto :goto_12

    :cond_14
    :goto_12
    add-int v4, v15, v13

    add-int/2addr v4, v14

    add-int v14, v5, v5

    add-int/2addr v14, v8

    new-array v8, v4, [I

    move v4, v5

    move-object/from16 v17, v8

    move v8, v10

    move v10, v14

    move/from16 v18, v15

    move/from16 v5, v16

    move v14, v11

    :goto_13
    sget-object v11, Lnyb;->b:Lsun/misc/Unsafe;

    iget-object v15, v0, Lnyj;->c:[Ljava/lang/Object;

    iget-object v9, v0, Lnyj;->a:Lnxy;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    add-int v19, v18, v13

    add-int v13, v12, v12

    mul-int/lit8 v12, v12, 0x3

    new-array v12, v12, [I

    new-array v13, v13, [Ljava/lang/Object;

    move/from16 v22, v18

    move/from16 v23, v19

    const/16 v20, 0x0

    const/16 v21, 0x0

    :goto_14
    const/4 v7, 0x2

    if-ne v1, v7, :cond_15

    const/4 v7, 0x1

    goto :goto_15

    :cond_15
    const/4 v7, 0x0

    :goto_15
    if-ge v5, v3, :cond_33

    add-int/lit8 v25, v5, 0x1

    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-lt v5, v6, :cond_17

    and-int/lit16 v5, v5, 0x1fff

    move/from16 v6, v25

    const/16 v25, 0xd

    :goto_16
    add-int/lit8 v27, v6, 0x1

    invoke-virtual {v2, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    move/from16 v28, v1

    const v1, 0xd800

    if-lt v6, v1, :cond_16

    and-int/lit16 v1, v6, 0x1fff

    shl-int v1, v1, v25

    or-int/2addr v5, v1

    add-int/lit8 v25, v25, 0xd

    move/from16 v6, v27

    move/from16 v1, v28

    goto :goto_16

    :cond_16
    shl-int v1, v6, v25

    or-int/2addr v5, v1

    move/from16 v1, v27

    goto :goto_17

    :cond_17
    move/from16 v28, v1

    move/from16 v1, v25

    :goto_17
    add-int/lit8 v6, v1, 0x1

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    move/from16 v25, v3

    const v3, 0xd800

    if-lt v1, v3, :cond_19

    and-int/lit16 v1, v1, 0x1fff

    const/16 v27, 0xd

    :goto_18
    add-int/lit8 v29, v6, 0x1

    invoke-virtual {v2, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-lt v6, v3, :cond_18

    and-int/lit16 v3, v6, 0x1fff

    shl-int v3, v3, v27

    or-int/2addr v1, v3

    add-int/lit8 v27, v27, 0xd

    move/from16 v6, v29

    const v3, 0xd800

    goto :goto_18

    :cond_18
    shl-int v3, v6, v27

    or-int/2addr v1, v3

    move/from16 v6, v29

    goto :goto_19

    :cond_19
    :goto_19
    and-int/lit16 v3, v1, 0x400

    if-eqz v3, :cond_1a

    add-int/lit8 v3, v20, 0x1

    aput v21, v17, v20

    move/from16 v20, v3

    :cond_1a
    and-int/lit16 v3, v1, 0xff

    move/from16 v29, v14

    const/16 v14, 0x33

    if-lt v3, v14, :cond_22

    add-int/lit8 v14, v6, 0x1

    invoke-virtual {v2, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    move/from16 v27, v14

    const v14, 0xd800

    if-lt v6, v14, :cond_1c

    and-int/lit16 v6, v6, 0x1fff

    move/from16 v14, v27

    const/16 v27, 0xd

    :goto_1a
    add-int/lit8 v31, v14, 0x1

    invoke-virtual {v2, v14}, Ljava/lang/String;->charAt(I)C

    move-result v14

    move/from16 v32, v8

    const v8, 0xd800

    if-lt v14, v8, :cond_1b

    and-int/lit16 v8, v14, 0x1fff

    shl-int v8, v8, v27

    or-int/2addr v6, v8

    add-int/lit8 v27, v27, 0xd

    move/from16 v14, v31

    move/from16 v8, v32

    goto :goto_1a

    :cond_1b
    shl-int v8, v14, v27

    or-int/2addr v6, v8

    move/from16 v14, v31

    goto :goto_1b

    :cond_1c
    move/from16 v32, v8

    move/from16 v14, v27

    :goto_1b
    add-int/lit8 v8, v3, -0x33

    move/from16 v27, v14

    const/16 v14, 0x9

    if-eq v8, v14, :cond_1e

    const/16 v14, 0x11

    if-ne v8, v14, :cond_1d

    goto :goto_1c

    :cond_1d
    const/16 v14, 0xc

    if-ne v8, v14, :cond_1f

    if-nez v7, :cond_1f

    div-int/lit8 v7, v21, 0x3

    add-int/2addr v7, v7

    const/4 v8, 0x1

    add-int/2addr v7, v8

    add-int/lit8 v8, v10, 0x1

    aget-object v10, v15, v10

    aput-object v10, v13, v7

    move v10, v8

    goto :goto_1d

    :cond_1e
    :goto_1c
    div-int/lit8 v7, v21, 0x3

    add-int/2addr v7, v7

    const/4 v8, 0x1

    add-int/2addr v7, v8

    add-int/lit8 v8, v10, 0x1

    aget-object v10, v15, v10

    aput-object v10, v13, v7

    move v10, v8

    :cond_1f
    :goto_1d
    add-int/2addr v6, v6

    aget-object v7, v15, v6

    instance-of v8, v7, Ljava/lang/reflect/Field;

    if-eqz v8, :cond_20

    check-cast v7, Ljava/lang/reflect/Field;

    goto :goto_1e

    :cond_20
    check-cast v7, Ljava/lang/String;

    invoke-static {v9, v7}, Lnyb;->H(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v7

    aput-object v7, v15, v6

    :goto_1e
    invoke-virtual {v11, v7}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v7

    long-to-int v8, v7

    add-int/lit8 v6, v6, 0x1

    aget-object v7, v15, v6

    instance-of v14, v7, Ljava/lang/reflect/Field;

    if-eqz v14, :cond_21

    check-cast v7, Ljava/lang/reflect/Field;

    goto :goto_1f

    :cond_21
    check-cast v7, Ljava/lang/String;

    invoke-static {v9, v7}, Lnyb;->H(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v7

    aput-object v7, v15, v6

    :goto_1f
    invoke-virtual {v11, v7}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v6

    long-to-int v7, v6

    move-object/from16 v30, v2

    move v2, v10

    move-object/from16 v24, v15

    move/from16 v10, v27

    const/4 v6, 0x0

    goto/16 :goto_2a

    :cond_22
    move/from16 v32, v8

    add-int/lit8 v8, v10, 0x1

    aget-object v10, v15, v10

    check-cast v10, Ljava/lang/String;

    invoke-static {v9, v10}, Lnyb;->H(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v10

    const/16 v14, 0x9

    if-eq v3, v14, :cond_2b

    const/16 v14, 0x11

    if-ne v3, v14, :cond_23

    goto :goto_24

    :cond_23
    const/16 v14, 0x1b

    if-eq v3, v14, :cond_2a

    const/16 v14, 0x31

    if-ne v3, v14, :cond_24

    goto :goto_23

    :cond_24
    const/16 v14, 0xc

    if-eq v3, v14, :cond_28

    const/16 v14, 0x1e

    if-eq v3, v14, :cond_28

    const/16 v14, 0x2c

    if-ne v3, v14, :cond_25

    goto :goto_21

    :cond_25
    const/16 v7, 0x32

    if-ne v3, v7, :cond_27

    add-int/lit8 v7, v22, 0x1

    aput v21, v17, v22

    div-int/lit8 v14, v21, 0x3

    add-int/lit8 v22, v8, 0x1

    aget-object v8, v15, v8

    add-int/2addr v14, v14

    aput-object v8, v13, v14

    and-int/lit16 v8, v1, 0x800

    if-eqz v8, :cond_26

    add-int/lit8 v14, v14, 0x1

    add-int/lit8 v8, v22, 0x1

    aget-object v22, v15, v22

    aput-object v22, v13, v14

    move/from16 v22, v7

    :goto_20
    const/4 v14, 0x1

    goto :goto_25

    :cond_26
    move/from16 v8, v22

    const/4 v14, 0x1

    move/from16 v22, v7

    goto :goto_25

    :cond_27
    goto :goto_20

    :cond_28
    :goto_21
    if-nez v7, :cond_29

    div-int/lit8 v7, v21, 0x3

    add-int/2addr v7, v7

    const/4 v14, 0x1

    add-int/2addr v7, v14

    add-int/lit8 v14, v8, 0x1

    aget-object v8, v15, v8

    aput-object v8, v13, v7

    move v8, v14

    :goto_22
    const/4 v14, 0x1

    goto :goto_25

    :cond_29
    goto :goto_22

    :cond_2a
    :goto_23
    div-int/lit8 v7, v21, 0x3

    add-int/2addr v7, v7

    const/4 v14, 0x1

    add-int/2addr v7, v14

    add-int/lit8 v14, v8, 0x1

    aget-object v8, v15, v8

    aput-object v8, v13, v7

    move v8, v14

    const/4 v14, 0x1

    goto :goto_25

    :cond_2b
    :goto_24
    div-int/lit8 v7, v21, 0x3

    add-int/2addr v7, v7

    const/4 v14, 0x1

    add-int/2addr v7, v14

    invoke-virtual {v10}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v24

    aput-object v24, v13, v7

    :goto_25
    move-object/from16 v24, v15

    invoke-virtual {v11, v10}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v14

    long-to-int v7, v14

    and-int/lit16 v10, v1, 0x1000

    const v14, 0xfffff

    const/16 v15, 0x1000

    if-ne v10, v15, :cond_2f

    const/16 v10, 0x11

    if-gt v3, v10, :cond_2f

    add-int/lit8 v10, v6, 0x1

    invoke-virtual {v2, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const v15, 0xd800

    if-lt v6, v15, :cond_2d

    and-int/lit16 v6, v6, 0x1fff

    const/16 v14, 0xd

    :goto_26
    add-int/lit8 v26, v10, 0x1

    invoke-virtual {v2, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-lt v10, v15, :cond_2c

    and-int/lit16 v10, v10, 0x1fff

    shl-int/2addr v10, v14

    or-int/2addr v6, v10

    add-int/lit8 v14, v14, 0xd

    move/from16 v10, v26

    goto :goto_26

    :cond_2c
    shl-int/2addr v10, v14

    or-int/2addr v6, v10

    move/from16 v10, v26

    goto :goto_27

    :cond_2d
    :goto_27
    add-int v14, v4, v4

    div-int/lit8 v26, v6, 0x20

    add-int v14, v14, v26

    aget-object v15, v24, v14

    move-object/from16 v30, v2

    instance-of v2, v15, Ljava/lang/reflect/Field;

    if-eqz v2, :cond_2e

    check-cast v15, Ljava/lang/reflect/Field;

    goto :goto_28

    :cond_2e
    check-cast v15, Ljava/lang/String;

    invoke-static {v9, v15}, Lnyb;->H(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v15

    aput-object v15, v24, v14

    :goto_28
    invoke-virtual {v11, v15}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v14

    long-to-int v2, v14

    rem-int/lit8 v6, v6, 0x20

    move v14, v2

    goto :goto_29

    :cond_2f
    move-object/from16 v30, v2

    move v10, v6

    const/4 v6, 0x0

    :goto_29
    const/16 v2, 0x12

    if-lt v3, v2, :cond_30

    const/16 v2, 0x31

    if-gt v3, v2, :cond_30

    add-int/lit8 v2, v23, 0x1

    aput v7, v17, v23

    move/from16 v23, v2

    move v2, v8

    move v8, v7

    move v7, v14

    goto :goto_2a

    :cond_30
    move v2, v8

    move v8, v7

    move v7, v14

    :goto_2a
    add-int/lit8 v14, v21, 0x1

    aput v5, v12, v21

    add-int/lit8 v5, v14, 0x1

    and-int/lit16 v15, v1, 0x200

    if-eqz v15, :cond_31

    const/high16 v15, 0x20000000

    goto :goto_2b

    :cond_31
    const/4 v15, 0x0

    :goto_2b
    and-int/lit16 v1, v1, 0x100

    if-eqz v1, :cond_32

    const/high16 v1, 0x10000000

    goto :goto_2c

    :cond_32
    const/4 v1, 0x0

    :goto_2c
    shl-int/lit8 v3, v3, 0x14

    or-int/2addr v1, v15

    or-int/2addr v1, v3

    or-int/2addr v1, v8

    aput v1, v12, v14

    add-int/lit8 v21, v5, 0x1

    shl-int/lit8 v1, v6, 0x14

    or-int/2addr v1, v7

    aput v1, v12, v5

    move v5, v10

    move-object/from16 v15, v24

    move/from16 v3, v25

    move/from16 v1, v28

    move/from16 v14, v29

    move/from16 v8, v32

    const v6, 0xd800

    move v10, v2

    move-object/from16 v2, v30

    goto/16 :goto_14

    :cond_33
    move/from16 v32, v8

    move/from16 v29, v14

    new-instance v1, Lnyb;

    move-object v10, v1

    iget-object v15, v0, Lnyj;->a:Lnxy;

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    move-object v11, v12

    move-object v12, v13

    move/from16 v13, v32

    move/from16 v16, v7

    move-object/from16 v20, p1

    move-object/from16 v21, p2

    move-object/from16 v22, p3

    invoke-direct/range {v10 .. v27}, Lnyb;-><init>([I[Ljava/lang/Object;IILnxy;Z[IIILnxo;Lkwp;Lkwp;[B[B[B[B[B)V

    return-object v1

    :cond_34
    check-cast v0, Lnyx;

    const/4 v0, 0x0

    goto :goto_2e

    :goto_2d
    throw v0

    :goto_2e
    goto :goto_2d
.end method

.method private static n(Ljava/lang/Object;J)D
    .locals 0

    invoke-static {p0, p1, p2}, Lnzi;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Double;

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p0

    return-wide p0
.end method

.method private static o(Ljava/lang/Object;J)F
    .locals 0

    invoke-static {p0, p1, p2}, Lnzi;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    return p0
.end method

.method private final p(I)I
    .locals 1

    iget-object v0, p0, Lnyb;->c:[I

    aget p1, v0, p1

    return p1
.end method

.method private static q(Ljava/lang/Object;J)I
    .locals 0

    invoke-static {p0, p1, p2}, Lnzi;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method private final r(Ljava/lang/Object;[BIIIJLnvj;)I
    .locals 16

    move-object/from16 v0, p1

    move-object/from16 v6, p2

    move/from16 v7, p4

    move-wide/from16 v1, p6

    move-object/from16 v8, p8

    sget-object v3, Lnyb;->b:Lsun/misc/Unsafe;

    move-object/from16 v9, p0

    move/from16 v4, p5

    invoke-direct {v9, v4}, Lnyb;->E(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v0, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Lkwp;->U(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-static {}, Lkwp;->W()Ljava/lang/Object;

    move-result-object v10

    invoke-static {v10, v5}, Lkwp;->V(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v3, v0, v1, v2, v10}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    move-object v5, v10

    :cond_0
    invoke-static {v4}, Lkwp;->az(Ljava/lang/Object;)Llhj;

    move-result-object v10

    move-object v11, v5

    check-cast v11, Lnxt;

    move/from16 v0, p3

    invoke-static {v6, v0, v8}, Lkwp;->ao([BILnvj;)I

    move-result v0

    iget v1, v8, Lnvj;->a:I

    if-ltz v1, :cond_5

    sub-int v2, v7, v0

    if-gt v1, v2, :cond_5

    add-int v12, v0, v1

    iget-object v1, v10, Llhj;->c:Ljava/lang/Object;

    iget-object v2, v10, Llhj;->d:Ljava/lang/Object;

    move-object v13, v1

    move-object v14, v2

    :goto_0
    if-ge v0, v12, :cond_3

    add-int/lit8 v1, v0, 0x1

    aget-byte v0, v6, v0

    if-gez v0, :cond_1

    invoke-static {v0, v6, v1, v8}, Lkwp;->ap(I[BILnvj;)I

    move-result v0

    iget v1, v8, Lnvj;->a:I

    move v15, v1

    move v1, v0

    move v0, v15

    goto :goto_1

    :cond_1
    :goto_1
    and-int/lit8 v2, v0, 0x7

    ushr-int/lit8 v3, v0, 0x3

    packed-switch v3, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    iget-object v3, v10, Llhj;->a:Ljava/lang/Object;

    check-cast v3, Lnzl;

    iget v4, v3, Lnzl;->t:I

    if-ne v2, v4, :cond_2

    iget-object v0, v10, Llhj;->d:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    move-object/from16 v0, p2

    move/from16 v2, p4

    move-object/from16 v5, p8

    invoke-static/range {v0 .. v5}, Lnyb;->Z([BIILnzl;Ljava/lang/Class;Lnvj;)I

    move-result v0

    iget-object v14, v8, Lnvj;->c:Ljava/lang/Object;

    goto :goto_0

    :pswitch_1
    iget-object v3, v10, Llhj;->b:Ljava/lang/Object;

    check-cast v3, Lnzl;

    iget v4, v3, Lnzl;->t:I

    if-ne v2, v4, :cond_2

    const/4 v4, 0x0

    move-object/from16 v0, p2

    move/from16 v2, p4

    move-object/from16 v5, p8

    invoke-static/range {v0 .. v5}, Lnyb;->Z([BIILnzl;Ljava/lang/Class;Lnvj;)I

    move-result v0

    iget-object v13, v8, Lnvj;->c:Ljava/lang/Object;

    goto :goto_0

    :cond_2
    :goto_2
    invoke-static {v0, v6, v1, v7, v8}, Lkwp;->au(I[BIILnvj;)I

    move-result v0

    goto :goto_0

    :cond_3
    if-ne v0, v12, :cond_4

    invoke-interface {v11, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return v12

    :cond_4
    invoke-static {}, Lnxd;->g()Lnxd;

    move-result-object v0

    throw v0

    :cond_5
    invoke-static {}, Lnxd;->i()Lnxd;

    move-result-object v0

    goto :goto_4

    :goto_3
    throw v0

    :goto_4
    goto :goto_3

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final s(Ljava/lang/Object;[BIIIIIIIJILnvj;)I
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v4, p2

    move/from16 v5, p3

    move/from16 v2, p5

    move/from16 v9, p6

    move/from16 v3, p7

    move-wide/from16 v6, p10

    move/from16 v10, p12

    move-object/from16 v8, p13

    sget-object v11, Lnyb;->b:Lsun/misc/Unsafe;

    iget-object v12, v0, Lnyb;->c:[I

    add-int/lit8 v13, v10, 0x2

    aget v12, v12, v13

    const v13, 0xfffff

    and-int/2addr v12, v13

    int-to-long v12, v12

    const/4 v14, 0x5

    const/4 v15, 0x2

    packed-switch p9, :pswitch_data_0

    :cond_0
    goto/16 :goto_5

    :pswitch_0
    const/4 v6, 0x3

    if-ne v3, v6, :cond_7

    invoke-direct {v0, v1, v9, v10}, Lnyb;->G(Ljava/lang/Object;II)Ljava/lang/Object;

    move-result-object v11

    and-int/lit8 v2, v2, -0x8

    or-int/lit8 v7, v2, 0x4

    invoke-direct {v0, v10}, Lnyb;->D(I)Lnyo;

    move-result-object v3

    move-object v2, v11

    move-object/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move-object/from16 v8, p13

    invoke-static/range {v2 .. v8}, Lkwp;->as(Ljava/lang/Object;Lnyo;[BIIILnvj;)I

    move-result v2

    invoke-direct {v0, v1, v9, v10, v11}, Lnyb;->Q(Ljava/lang/Object;IILjava/lang/Object;)V

    return v2

    :pswitch_1
    if-nez v3, :cond_7

    invoke-static {v4, v5, v8}, Lkwp;->ar([BILnvj;)I

    move-result v2

    iget-wide v3, v8, Lnvj;->b:J

    invoke-static {v3, v4}, Lnvy;->H(J)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v11, v1, v6, v7, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v11, v1, v12, v13, v9}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    return v2

    :pswitch_2
    if-nez v3, :cond_7

    invoke-static {v4, v5, v8}, Lkwp;->ao([BILnvj;)I

    move-result v2

    iget v3, v8, Lnvj;->a:I

    invoke-static {v3}, Lnvy;->F(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v11, v1, v6, v7, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v11, v1, v12, v13, v9}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    return v2

    :pswitch_3
    if-nez v3, :cond_7

    invoke-static {v4, v5, v8}, Lkwp;->ao([BILnvj;)I

    move-result v3

    iget v4, v8, Lnvj;->a:I

    invoke-direct {v0, v10}, Lnyb;->C(I)Lnww;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-interface {v5, v4}, Lnww;->a(I)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_0

    :cond_1
    invoke-static/range {p1 .. p1}, Lnyb;->d(Ljava/lang/Object;)Lnza;

    move-result-object v1

    int-to-long v4, v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lnza;->f(ILjava/lang/Object;)V

    goto :goto_1

    :cond_2
    :goto_0
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v11, v1, v6, v7, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v11, v1, v12, v13, v9}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :goto_1
    move v2, v3

    goto/16 :goto_6

    :pswitch_4
    if-ne v3, v15, :cond_7

    invoke-static {v4, v5, v8}, Lkwp;->af([BILnvj;)I

    move-result v2

    iget-object v3, v8, Lnvj;->c:Ljava/lang/Object;

    invoke-virtual {v11, v1, v6, v7, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v11, v1, v12, v13, v9}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    return v2

    :pswitch_5
    if-ne v3, v15, :cond_7

    invoke-direct {v0, v1, v9, v10}, Lnyb;->G(Ljava/lang/Object;II)Ljava/lang/Object;

    move-result-object v11

    invoke-direct {v0, v10}, Lnyb;->D(I)Lnyo;

    move-result-object v3

    move-object v2, v11

    move-object/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move-object/from16 v7, p13

    invoke-static/range {v2 .. v7}, Lkwp;->at(Ljava/lang/Object;Lnyo;[BIILnvj;)I

    move-result v2

    invoke-direct {v0, v1, v9, v10, v11}, Lnyb;->Q(Ljava/lang/Object;IILjava/lang/Object;)V

    return v2

    :pswitch_6
    if-ne v3, v15, :cond_7

    invoke-static {v4, v5, v8}, Lkwp;->ao([BILnvj;)I

    move-result v2

    iget v3, v8, Lnvj;->a:I

    if-nez v3, :cond_3

    const-string v3, ""

    invoke-virtual {v11, v1, v6, v7, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_3

    :cond_3
    const/high16 v5, 0x20000000

    and-int v5, p8, v5

    if-eqz v5, :cond_5

    add-int v5, v2, v3

    invoke-static {v4, v2, v5}, Lnzk;->g([BII)Z

    move-result v5

    if-eqz v5, :cond_4

    goto :goto_2

    :cond_4
    invoke-static {}, Lnxd;->d()Lnxd;

    move-result-object v1

    throw v1

    :cond_5
    :goto_2
    new-instance v5, Ljava/lang/String;

    sget-object v8, Lnxb;->a:Ljava/nio/charset/Charset;

    invoke-direct {v5, v4, v2, v3, v8}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    invoke-virtual {v11, v1, v6, v7, v5}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    add-int/2addr v2, v3

    :goto_3
    invoke-virtual {v11, v1, v12, v13, v9}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_6

    :pswitch_7
    if-nez v3, :cond_7

    invoke-static {v4, v5, v8}, Lkwp;->ar([BILnvj;)I

    move-result v2

    iget-wide v3, v8, Lnvj;->b:J

    const-wide/16 v14, 0x0

    cmp-long v5, v3, v14

    if-eqz v5, :cond_6

    const/4 v15, 0x1

    goto :goto_4

    :cond_6
    const/4 v15, 0x0

    :goto_4
    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v11, v1, v6, v7, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v11, v1, v12, v13, v9}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    return v2

    :pswitch_8
    if-ne v3, v14, :cond_7

    invoke-static/range {p2 .. p3}, Lkwp;->ag([BI)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v11, v1, v6, v7, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    add-int/lit8 v2, v5, 0x4

    invoke-virtual {v11, v1, v12, v13, v9}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    return v2

    :pswitch_9
    const/4 v2, 0x1

    if-ne v3, v2, :cond_7

    invoke-static/range {p2 .. p3}, Lkwp;->av([BI)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v11, v1, v6, v7, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    add-int/lit8 v2, v5, 0x8

    invoke-virtual {v11, v1, v12, v13, v9}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    return v2

    :pswitch_a
    if-nez v3, :cond_7

    invoke-static {v4, v5, v8}, Lkwp;->ao([BILnvj;)I

    move-result v2

    iget v3, v8, Lnvj;->a:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v11, v1, v6, v7, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v11, v1, v12, v13, v9}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    return v2

    :pswitch_b
    if-nez v3, :cond_7

    invoke-static {v4, v5, v8}, Lkwp;->ar([BILnvj;)I

    move-result v2

    iget-wide v3, v8, Lnvj;->b:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v11, v1, v6, v7, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v11, v1, v12, v13, v9}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    return v2

    :pswitch_c
    if-ne v3, v14, :cond_7

    invoke-static/range {p2 .. p3}, Lkwp;->ae([BI)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v11, v1, v6, v7, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    add-int/lit8 v2, v5, 0x4

    invoke-virtual {v11, v1, v12, v13, v9}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    return v2

    :pswitch_d
    const/4 v2, 0x1

    if-ne v3, v2, :cond_0

    invoke-static/range {p2 .. p3}, Lkwp;->ad([BI)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v11, v1, v6, v7, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    add-int/lit8 v2, v5, 0x8

    invoke-virtual {v11, v1, v12, v13, v9}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    return v2

    :cond_7
    :goto_5
    move v2, v5

    :goto_6
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x33
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_a
        :pswitch_3
        :pswitch_8
        :pswitch_9
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final t(Ljava/lang/Object;[BIIIIIIJIJLnvj;)I
    .locals 15

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v2, p5

    move/from16 v6, p7

    move/from16 v8, p8

    move-wide/from16 v9, p12

    move-object/from16 v7, p14

    sget-object v11, Lnyb;->b:Lsun/misc/Unsafe;

    invoke-virtual {v11, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lnxa;

    invoke-interface {v12}, Lnxa;->c()Z

    move-result v13

    if-nez v13, :cond_1

    invoke-interface {v12}, Lnxa;->size()I

    move-result v13

    if-nez v13, :cond_0

    const/16 v13, 0xa

    goto :goto_0

    :cond_0
    add-int/2addr v13, v13

    :goto_0
    invoke-interface {v12, v13}, Lnxa;->e(I)Lnxa;

    move-result-object v12

    invoke-virtual {v11, v1, v9, v10, v12}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_1

    :cond_1
    :goto_1
    const/4 v9, 0x5

    const-wide/16 v10, 0x0

    const/4 v13, 0x1

    const/4 v14, 0x2

    packed-switch p11, :pswitch_data_0

    const/4 v1, 0x3

    if-ne v6, v1, :cond_44

    invoke-direct {p0, v8}, Lnyb;->D(I)Lnyo;

    move-result-object v1

    and-int/lit8 v6, v2, -0x8

    or-int/lit8 v6, v6, 0x4

    move-object/from16 p6, v1

    move-object/from16 p7, p2

    move/from16 p8, p3

    move/from16 p9, p4

    move/from16 p10, v6

    move-object/from16 p11, p14

    invoke-static/range {p6 .. p11}, Lkwp;->ah(Lnyo;[BIIILnvj;)I

    move-result v4

    iget-object v8, v7, Lnvj;->c:Ljava/lang/Object;

    invoke-interface {v12, v8}, Lnxa;->add(Ljava/lang/Object;)Z

    goto/16 :goto_22

    :pswitch_0
    if-ne v6, v14, :cond_4

    check-cast v12, Lnxp;

    invoke-static {v3, v4, v7}, Lkwp;->ao([BILnvj;)I

    move-result v1

    iget v2, v7, Lnvj;->a:I

    add-int/2addr v2, v1

    :goto_2
    if-ge v1, v2, :cond_2

    invoke-static {v3, v1, v7}, Lkwp;->ar([BILnvj;)I

    move-result v1

    iget-wide v4, v7, Lnvj;->b:J

    invoke-static {v4, v5}, Lnvy;->H(J)J

    move-result-wide v4

    invoke-virtual {v12, v4, v5}, Lnxp;->f(J)V

    goto :goto_2

    :cond_2
    if-ne v1, v2, :cond_3

    goto/16 :goto_24

    :cond_3
    invoke-static {}, Lnxd;->i()Lnxd;

    move-result-object v1

    throw v1

    :cond_4
    if-nez v6, :cond_44

    check-cast v12, Lnxp;

    invoke-static {v3, v4, v7}, Lkwp;->ar([BILnvj;)I

    move-result v1

    iget-wide v8, v7, Lnvj;->b:J

    invoke-static {v8, v9}, Lnvy;->H(J)J

    move-result-wide v8

    invoke-virtual {v12, v8, v9}, Lnxp;->f(J)V

    :goto_3
    if-ge v1, v5, :cond_6

    invoke-static {v3, v1, v7}, Lkwp;->ao([BILnvj;)I

    move-result v4

    iget v6, v7, Lnvj;->a:I

    if-eq v2, v6, :cond_5

    goto :goto_4

    :cond_5
    invoke-static {v3, v4, v7}, Lkwp;->ar([BILnvj;)I

    move-result v1

    iget-wide v8, v7, Lnvj;->b:J

    invoke-static {v8, v9}, Lnvy;->H(J)J

    move-result-wide v8

    invoke-virtual {v12, v8, v9}, Lnxp;->f(J)V

    goto :goto_3

    :cond_6
    :goto_4
    return v1

    :pswitch_1
    if-ne v6, v14, :cond_9

    check-cast v12, Lnwt;

    invoke-static {v3, v4, v7}, Lkwp;->ao([BILnvj;)I

    move-result v1

    iget v2, v7, Lnvj;->a:I

    add-int/2addr v2, v1

    :goto_5
    if-ge v1, v2, :cond_7

    invoke-static {v3, v1, v7}, Lkwp;->ao([BILnvj;)I

    move-result v1

    iget v4, v7, Lnvj;->a:I

    invoke-static {v4}, Lnvy;->F(I)I

    move-result v4

    invoke-virtual {v12, v4}, Lnwt;->g(I)V

    goto :goto_5

    :cond_7
    if-ne v1, v2, :cond_8

    goto/16 :goto_24

    :cond_8
    invoke-static {}, Lnxd;->i()Lnxd;

    move-result-object v1

    throw v1

    :cond_9
    if-nez v6, :cond_44

    check-cast v12, Lnwt;

    invoke-static {v3, v4, v7}, Lkwp;->ao([BILnvj;)I

    move-result v1

    iget v4, v7, Lnvj;->a:I

    invoke-static {v4}, Lnvy;->F(I)I

    move-result v4

    invoke-virtual {v12, v4}, Lnwt;->g(I)V

    :goto_6
    if-ge v1, v5, :cond_b

    invoke-static {v3, v1, v7}, Lkwp;->ao([BILnvj;)I

    move-result v4

    iget v6, v7, Lnvj;->a:I

    if-eq v2, v6, :cond_a

    goto :goto_7

    :cond_a
    invoke-static {v3, v4, v7}, Lkwp;->ao([BILnvj;)I

    move-result v1

    iget v4, v7, Lnvj;->a:I

    invoke-static {v4}, Lnvy;->F(I)I

    move-result v4

    invoke-virtual {v12, v4}, Lnwt;->g(I)V

    goto :goto_6

    :cond_b
    :goto_7
    return v1

    :pswitch_2
    if-ne v6, v14, :cond_c

    invoke-static {v3, v4, v12, v7}, Lkwp;->ak([BILnxa;Lnvj;)I

    move-result v2

    goto :goto_8

    :cond_c
    if-nez v6, :cond_44

    move/from16 v2, p5

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move-object v6, v12

    move-object/from16 v7, p14

    invoke-static/range {v2 .. v7}, Lkwp;->aq(I[BIILnxa;Lnvj;)I

    move-result v2

    :goto_8
    invoke-direct {p0, v8}, Lnyb;->C(I)Lnww;

    move-result-object v3

    const/4 v4, 0x0

    iget-object v5, v0, Lnyb;->o:Lkwp;

    move-object/from16 p7, p1

    move/from16 p8, p6

    move-object/from16 p9, v12

    move-object/from16 p10, v3

    move-object/from16 p11, v4

    move-object/from16 p12, v5

    invoke-static/range {p7 .. p12}, Lnyp;->V(Ljava/lang/Object;ILjava/util/List;Lnww;Ljava/lang/Object;Lkwp;)Ljava/lang/Object;

    move v1, v2

    goto/16 :goto_24

    :pswitch_3
    if-ne v6, v14, :cond_44

    invoke-static {v3, v4, v7}, Lkwp;->ao([BILnvj;)I

    move-result v1

    iget v4, v7, Lnvj;->a:I

    if-ltz v4, :cond_14

    array-length v6, v3

    sub-int/2addr v6, v1

    if-gt v4, v6, :cond_13

    if-nez v4, :cond_d

    sget-object v4, Lnvt;->b:Lnvt;

    invoke-interface {v12, v4}, Lnxa;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_d
    invoke-static {v3, v1, v4}, Lnvt;->v([BII)Lnvt;

    move-result-object v6

    invoke-interface {v12, v6}, Lnxa;->add(Ljava/lang/Object;)Z

    add-int/2addr v1, v4

    :goto_9
    if-ge v1, v5, :cond_12

    invoke-static {v3, v1, v7}, Lkwp;->ao([BILnvj;)I

    move-result v4

    iget v6, v7, Lnvj;->a:I

    if-eq v2, v6, :cond_e

    goto :goto_a

    :cond_e
    invoke-static {v3, v4, v7}, Lkwp;->ao([BILnvj;)I

    move-result v1

    iget v4, v7, Lnvj;->a:I

    if-ltz v4, :cond_11

    array-length v6, v3

    sub-int/2addr v6, v1

    if-gt v4, v6, :cond_10

    if-nez v4, :cond_f

    sget-object v4, Lnvt;->b:Lnvt;

    invoke-interface {v12, v4}, Lnxa;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_f
    invoke-static {v3, v1, v4}, Lnvt;->v([BII)Lnvt;

    move-result-object v6

    invoke-interface {v12, v6}, Lnxa;->add(Ljava/lang/Object;)Z

    add-int/2addr v1, v4

    goto :goto_9

    :cond_10
    invoke-static {}, Lnxd;->i()Lnxd;

    move-result-object v1

    throw v1

    :cond_11
    invoke-static {}, Lnxd;->f()Lnxd;

    move-result-object v1

    throw v1

    :cond_12
    :goto_a
    return v1

    :cond_13
    invoke-static {}, Lnxd;->i()Lnxd;

    move-result-object v1

    throw v1

    :cond_14
    invoke-static {}, Lnxd;->f()Lnxd;

    move-result-object v1

    throw v1

    :pswitch_4
    if-ne v6, v14, :cond_44

    invoke-direct {p0, v8}, Lnyb;->D(I)Lnyo;

    move-result-object v1

    move-object/from16 p6, v1

    move/from16 p7, p5

    move-object/from16 p8, p2

    move/from16 p9, p3

    move/from16 p10, p4

    move-object/from16 p11, v12

    move-object/from16 p12, p14

    invoke-static/range {p6 .. p12}, Lkwp;->aj(Lnyo;I[BIILnxa;Lnvj;)I

    move-result v1

    return v1

    :pswitch_5
    if-ne v6, v14, :cond_44

    const-wide/32 v8, 0x20000000

    and-long v8, p9, v8

    const-string v1, ""

    cmp-long v6, v8, v10

    if-nez v6, :cond_19

    invoke-static {v3, v4, v7}, Lkwp;->ao([BILnvj;)I

    move-result v4

    iget v6, v7, Lnvj;->a:I

    if-ltz v6, :cond_18

    if-nez v6, :cond_15

    invoke-interface {v12, v1}, Lnxa;->add(Ljava/lang/Object;)Z

    goto :goto_b

    :cond_15
    new-instance v8, Ljava/lang/String;

    sget-object v9, Lnxb;->a:Ljava/nio/charset/Charset;

    invoke-direct {v8, v3, v4, v6, v9}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    invoke-interface {v12, v8}, Lnxa;->add(Ljava/lang/Object;)Z

    add-int/2addr v4, v6

    :goto_b
    if-ge v4, v5, :cond_44

    invoke-static {v3, v4, v7}, Lkwp;->ao([BILnvj;)I

    move-result v6

    iget v8, v7, Lnvj;->a:I

    if-ne v2, v8, :cond_44

    invoke-static {v3, v6, v7}, Lkwp;->ao([BILnvj;)I

    move-result v4

    iget v6, v7, Lnvj;->a:I

    if-ltz v6, :cond_17

    if-nez v6, :cond_16

    invoke-interface {v12, v1}, Lnxa;->add(Ljava/lang/Object;)Z

    goto :goto_b

    :cond_16
    new-instance v8, Ljava/lang/String;

    sget-object v9, Lnxb;->a:Ljava/nio/charset/Charset;

    invoke-direct {v8, v3, v4, v6, v9}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    invoke-interface {v12, v8}, Lnxa;->add(Ljava/lang/Object;)Z

    add-int/2addr v4, v6

    goto :goto_b

    :cond_17
    invoke-static {}, Lnxd;->f()Lnxd;

    move-result-object v1

    throw v1

    :cond_18
    invoke-static {}, Lnxd;->f()Lnxd;

    move-result-object v1

    throw v1

    :cond_19
    invoke-static {v3, v4, v7}, Lkwp;->ao([BILnvj;)I

    move-result v4

    iget v6, v7, Lnvj;->a:I

    if-ltz v6, :cond_1f

    if-nez v6, :cond_1a

    invoke-interface {v12, v1}, Lnxa;->add(Ljava/lang/Object;)Z

    goto :goto_c

    :cond_1a
    add-int v8, v4, v6

    invoke-static {v3, v4, v8}, Lnzk;->g([BII)Z

    move-result v9

    if-eqz v9, :cond_1e

    new-instance v9, Ljava/lang/String;

    sget-object v10, Lnxb;->a:Ljava/nio/charset/Charset;

    invoke-direct {v9, v3, v4, v6, v10}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    invoke-interface {v12, v9}, Lnxa;->add(Ljava/lang/Object;)Z

    move v4, v8

    :goto_c
    if-ge v4, v5, :cond_44

    invoke-static {v3, v4, v7}, Lkwp;->ao([BILnvj;)I

    move-result v6

    iget v8, v7, Lnvj;->a:I

    if-ne v2, v8, :cond_44

    invoke-static {v3, v6, v7}, Lkwp;->ao([BILnvj;)I

    move-result v4

    iget v6, v7, Lnvj;->a:I

    if-ltz v6, :cond_1d

    if-nez v6, :cond_1b

    invoke-interface {v12, v1}, Lnxa;->add(Ljava/lang/Object;)Z

    goto :goto_c

    :cond_1b
    add-int v8, v4, v6

    invoke-static {v3, v4, v8}, Lnzk;->g([BII)Z

    move-result v9

    if-eqz v9, :cond_1c

    new-instance v9, Ljava/lang/String;

    sget-object v10, Lnxb;->a:Ljava/nio/charset/Charset;

    invoke-direct {v9, v3, v4, v6, v10}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    invoke-interface {v12, v9}, Lnxa;->add(Ljava/lang/Object;)Z

    move v4, v8

    goto :goto_c

    :cond_1c
    invoke-static {}, Lnxd;->d()Lnxd;

    move-result-object v1

    throw v1

    :cond_1d
    invoke-static {}, Lnxd;->f()Lnxd;

    move-result-object v1

    throw v1

    :cond_1e
    invoke-static {}, Lnxd;->d()Lnxd;

    move-result-object v1

    throw v1

    :cond_1f
    invoke-static {}, Lnxd;->f()Lnxd;

    move-result-object v1

    throw v1

    :pswitch_6
    const/4 v1, 0x0

    if-ne v6, v14, :cond_23

    check-cast v12, Lnvl;

    invoke-static {v3, v4, v7}, Lkwp;->ao([BILnvj;)I

    move-result v2

    iget v4, v7, Lnvj;->a:I

    add-int/2addr v4, v2

    :goto_d
    if-ge v2, v4, :cond_21

    invoke-static {v3, v2, v7}, Lkwp;->ar([BILnvj;)I

    move-result v2

    iget-wide v5, v7, Lnvj;->b:J

    cmp-long v8, v5, v10

    if-eqz v8, :cond_20

    const/4 v5, 0x1

    goto :goto_e

    :cond_20
    const/4 v5, 0x0

    :goto_e
    invoke-virtual {v12, v5}, Lnvl;->f(Z)V

    goto :goto_d

    :cond_21
    if-ne v2, v4, :cond_22

    move v1, v2

    goto/16 :goto_24

    :cond_22
    invoke-static {}, Lnxd;->i()Lnxd;

    move-result-object v1

    throw v1

    :cond_23
    if-nez v6, :cond_44

    check-cast v12, Lnvl;

    invoke-static {v3, v4, v7}, Lkwp;->ar([BILnvj;)I

    move-result v4

    iget-wide v8, v7, Lnvj;->b:J

    cmp-long v6, v8, v10

    if-eqz v6, :cond_24

    const/4 v6, 0x1

    goto :goto_f

    :cond_24
    const/4 v6, 0x0

    :goto_f
    invoke-virtual {v12, v6}, Lnvl;->f(Z)V

    :goto_10
    if-ge v4, v5, :cond_27

    invoke-static {v3, v4, v7}, Lkwp;->ao([BILnvj;)I

    move-result v6

    iget v8, v7, Lnvj;->a:I

    if-eq v2, v8, :cond_25

    goto :goto_12

    :cond_25
    invoke-static {v3, v6, v7}, Lkwp;->ar([BILnvj;)I

    move-result v4

    iget-wide v8, v7, Lnvj;->b:J

    cmp-long v6, v8, v10

    if-eqz v6, :cond_26

    const/4 v6, 0x1

    goto :goto_11

    :cond_26
    const/4 v6, 0x0

    :goto_11
    invoke-virtual {v12, v6}, Lnvl;->f(Z)V

    goto :goto_10

    :cond_27
    :goto_12
    return v4

    :pswitch_7
    if-ne v6, v14, :cond_2a

    check-cast v12, Lnwt;

    invoke-static {v3, v4, v7}, Lkwp;->ao([BILnvj;)I

    move-result v1

    iget v2, v7, Lnvj;->a:I

    add-int/2addr v2, v1

    :goto_13
    if-ge v1, v2, :cond_28

    invoke-static {v3, v1}, Lkwp;->ag([BI)I

    move-result v4

    invoke-virtual {v12, v4}, Lnwt;->g(I)V

    add-int/lit8 v1, v1, 0x4

    goto :goto_13

    :cond_28
    if-ne v1, v2, :cond_29

    goto/16 :goto_24

    :cond_29
    invoke-static {}, Lnxd;->i()Lnxd;

    move-result-object v1

    throw v1

    :cond_2a
    if-ne v6, v9, :cond_44

    check-cast v12, Lnwt;

    invoke-static/range {p2 .. p3}, Lkwp;->ag([BI)I

    move-result v1

    invoke-virtual {v12, v1}, Lnwt;->g(I)V

    add-int/lit8 v1, v4, 0x4

    :goto_14
    if-ge v1, v5, :cond_2c

    invoke-static {v3, v1, v7}, Lkwp;->ao([BILnvj;)I

    move-result v4

    iget v6, v7, Lnvj;->a:I

    if-eq v2, v6, :cond_2b

    goto :goto_15

    :cond_2b
    invoke-static {v3, v4}, Lkwp;->ag([BI)I

    move-result v1

    invoke-virtual {v12, v1}, Lnwt;->g(I)V

    add-int/lit8 v1, v4, 0x4

    goto :goto_14

    :cond_2c
    :goto_15
    return v1

    :pswitch_8
    if-ne v6, v14, :cond_2f

    check-cast v12, Lnxp;

    invoke-static {v3, v4, v7}, Lkwp;->ao([BILnvj;)I

    move-result v1

    iget v2, v7, Lnvj;->a:I

    add-int/2addr v2, v1

    :goto_16
    if-ge v1, v2, :cond_2d

    invoke-static {v3, v1}, Lkwp;->av([BI)J

    move-result-wide v4

    invoke-virtual {v12, v4, v5}, Lnxp;->f(J)V

    add-int/lit8 v1, v1, 0x8

    goto :goto_16

    :cond_2d
    if-ne v1, v2, :cond_2e

    goto/16 :goto_24

    :cond_2e
    invoke-static {}, Lnxd;->i()Lnxd;

    move-result-object v1

    throw v1

    :cond_2f
    if-ne v6, v13, :cond_44

    check-cast v12, Lnxp;

    invoke-static/range {p2 .. p3}, Lkwp;->av([BI)J

    move-result-wide v8

    invoke-virtual {v12, v8, v9}, Lnxp;->f(J)V

    add-int/lit8 v1, v4, 0x8

    :goto_17
    if-ge v1, v5, :cond_31

    invoke-static {v3, v1, v7}, Lkwp;->ao([BILnvj;)I

    move-result v4

    iget v6, v7, Lnvj;->a:I

    if-eq v2, v6, :cond_30

    goto :goto_18

    :cond_30
    invoke-static {v3, v4}, Lkwp;->av([BI)J

    move-result-wide v8

    invoke-virtual {v12, v8, v9}, Lnxp;->f(J)V

    add-int/lit8 v1, v4, 0x8

    goto :goto_17

    :cond_31
    :goto_18
    return v1

    :pswitch_9
    if-ne v6, v14, :cond_32

    invoke-static {v3, v4, v12, v7}, Lkwp;->ak([BILnxa;Lnvj;)I

    move-result v1

    goto/16 :goto_24

    :cond_32
    if-nez v6, :cond_44

    move-object/from16 p6, p2

    move/from16 p7, p3

    move/from16 p8, p4

    move-object/from16 p9, v12

    move-object/from16 p10, p14

    invoke-static/range {p5 .. p10}, Lkwp;->aq(I[BIILnxa;Lnvj;)I

    move-result v1

    return v1

    :pswitch_a
    if-ne v6, v14, :cond_35

    check-cast v12, Lnxp;

    invoke-static {v3, v4, v7}, Lkwp;->ao([BILnvj;)I

    move-result v1

    iget v2, v7, Lnvj;->a:I

    add-int/2addr v2, v1

    :goto_19
    if-ge v1, v2, :cond_33

    invoke-static {v3, v1, v7}, Lkwp;->ar([BILnvj;)I

    move-result v1

    iget-wide v4, v7, Lnvj;->b:J

    invoke-virtual {v12, v4, v5}, Lnxp;->f(J)V

    goto :goto_19

    :cond_33
    if-ne v1, v2, :cond_34

    goto/16 :goto_24

    :cond_34
    invoke-static {}, Lnxd;->i()Lnxd;

    move-result-object v1

    throw v1

    :cond_35
    if-nez v6, :cond_44

    check-cast v12, Lnxp;

    invoke-static {v3, v4, v7}, Lkwp;->ar([BILnvj;)I

    move-result v1

    iget-wide v8, v7, Lnvj;->b:J

    invoke-virtual {v12, v8, v9}, Lnxp;->f(J)V

    :goto_1a
    if-ge v1, v5, :cond_37

    invoke-static {v3, v1, v7}, Lkwp;->ao([BILnvj;)I

    move-result v4

    iget v6, v7, Lnvj;->a:I

    if-eq v2, v6, :cond_36

    goto :goto_1b

    :cond_36
    invoke-static {v3, v4, v7}, Lkwp;->ar([BILnvj;)I

    move-result v1

    iget-wide v8, v7, Lnvj;->b:J

    invoke-virtual {v12, v8, v9}, Lnxp;->f(J)V

    goto :goto_1a

    :cond_37
    :goto_1b
    return v1

    :pswitch_b
    if-ne v6, v14, :cond_3a

    check-cast v12, Lnwl;

    invoke-static {v3, v4, v7}, Lkwp;->ao([BILnvj;)I

    move-result v1

    iget v2, v7, Lnvj;->a:I

    add-int/2addr v2, v1

    :goto_1c
    if-ge v1, v2, :cond_38

    invoke-static {v3, v1}, Lkwp;->ae([BI)F

    move-result v4

    invoke-virtual {v12, v4}, Lnwl;->g(F)V

    add-int/lit8 v1, v1, 0x4

    goto :goto_1c

    :cond_38
    if-ne v1, v2, :cond_39

    goto/16 :goto_24

    :cond_39
    invoke-static {}, Lnxd;->i()Lnxd;

    move-result-object v1

    throw v1

    :cond_3a
    if-ne v6, v9, :cond_44

    check-cast v12, Lnwl;

    invoke-static/range {p2 .. p3}, Lkwp;->ae([BI)F

    move-result v1

    invoke-virtual {v12, v1}, Lnwl;->g(F)V

    add-int/lit8 v1, v4, 0x4

    :goto_1d
    if-ge v1, v5, :cond_3c

    invoke-static {v3, v1, v7}, Lkwp;->ao([BILnvj;)I

    move-result v4

    iget v6, v7, Lnvj;->a:I

    if-eq v2, v6, :cond_3b

    goto :goto_1e

    :cond_3b
    invoke-static {v3, v4}, Lkwp;->ae([BI)F

    move-result v1

    invoke-virtual {v12, v1}, Lnwl;->g(F)V

    add-int/lit8 v1, v4, 0x4

    goto :goto_1d

    :cond_3c
    :goto_1e
    return v1

    :pswitch_c
    if-ne v6, v14, :cond_3f

    check-cast v12, Lnwe;

    invoke-static {v3, v4, v7}, Lkwp;->ao([BILnvj;)I

    move-result v1

    iget v2, v7, Lnvj;->a:I

    add-int/2addr v2, v1

    :goto_1f
    if-ge v1, v2, :cond_3d

    invoke-static {v3, v1}, Lkwp;->ad([BI)D

    move-result-wide v4

    invoke-virtual {v12, v4, v5}, Lnwe;->d(D)V

    add-int/lit8 v1, v1, 0x8

    goto :goto_1f

    :cond_3d
    if-ne v1, v2, :cond_3e

    goto :goto_24

    :cond_3e
    invoke-static {}, Lnxd;->i()Lnxd;

    move-result-object v1

    throw v1

    :cond_3f
    if-ne v6, v13, :cond_44

    check-cast v12, Lnwe;

    invoke-static/range {p2 .. p3}, Lkwp;->ad([BI)D

    move-result-wide v8

    invoke-virtual {v12, v8, v9}, Lnwe;->d(D)V

    add-int/lit8 v1, v4, 0x8

    :goto_20
    if-ge v1, v5, :cond_41

    invoke-static {v3, v1, v7}, Lkwp;->ao([BILnvj;)I

    move-result v4

    iget v6, v7, Lnvj;->a:I

    if-eq v2, v6, :cond_40

    goto :goto_21

    :cond_40
    invoke-static {v3, v4}, Lkwp;->ad([BI)D

    move-result-wide v8

    invoke-virtual {v12, v8, v9}, Lnwe;->d(D)V

    add-int/lit8 v1, v4, 0x8

    goto :goto_20

    :cond_41
    :goto_21
    return v1

    :goto_22
    if-ge v4, v5, :cond_43

    invoke-static {v3, v4, v7}, Lkwp;->ao([BILnvj;)I

    move-result v8

    iget v9, v7, Lnvj;->a:I

    if-eq v2, v9, :cond_42

    goto :goto_23

    :cond_42
    move-object/from16 p6, v1

    move-object/from16 p7, p2

    move/from16 p8, v8

    move/from16 p9, p4

    move/from16 p10, v6

    move-object/from16 p11, p14

    invoke-static/range {p6 .. p11}, Lkwp;->ah(Lnyo;[BIIILnvj;)I

    move-result v4

    iget-object v8, v7, Lnvj;->c:Ljava/lang/Object;

    invoke-interface {v12, v8}, Lnxa;->add(Ljava/lang/Object;)Z

    goto :goto_22

    :cond_43
    :goto_23
    return v4

    :cond_44
    move v1, v4

    :goto_24
    return v1

    :pswitch_data_0
    .packed-switch 0x12
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_9
        :pswitch_2
        :pswitch_7
        :pswitch_8
        :pswitch_1
        :pswitch_0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_9
        :pswitch_2
        :pswitch_7
        :pswitch_8
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final u(I)I
    .locals 1

    iget v0, p0, Lnyb;->e:I

    if-lt p1, v0, :cond_0

    iget v0, p0, Lnyb;->f:I

    if-gt p1, v0, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lnyb;->x(II)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method private final v(II)I
    .locals 1

    iget v0, p0, Lnyb;->e:I

    if-lt p1, v0, :cond_0

    iget v0, p0, Lnyb;->f:I

    if-gt p1, v0, :cond_0

    invoke-direct {p0, p1, p2}, Lnyb;->x(II)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method private final w(I)I
    .locals 1

    iget-object v0, p0, Lnyb;->c:[I

    add-int/lit8 p1, p1, 0x2

    aget p1, v0, p1

    return p1
.end method

.method private final x(II)I
    .locals 5

    iget-object v0, p0, Lnyb;->c:[I

    array-length v0, v0

    div-int/lit8 v0, v0, 0x3

    const/4 v1, -0x1

    add-int/2addr v0, v1

    :goto_0
    if-gt p2, v0, :cond_2

    add-int v2, v0, p2

    ushr-int/lit8 v2, v2, 0x1

    mul-int/lit8 v3, v2, 0x3

    invoke-direct {p0, v3}, Lnyb;->p(I)I

    move-result v4

    if-ne p1, v4, :cond_0

    return v3

    :cond_0
    if-ge p1, v4, :cond_1

    add-int/lit8 v0, v2, -0x1

    goto :goto_0

    :cond_1
    add-int/lit8 p2, v2, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method private static y(I)I
    .locals 0

    ushr-int/lit8 p0, p0, 0x14

    and-int/lit16 p0, p0, 0xff

    return p0
.end method

.method private final z(I)I
    .locals 1

    iget-object v0, p0, Lnyb;->c:[I

    add-int/lit8 p1, p1, 0x1

    aget p1, v0, p1

    return p1
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)I
    .locals 13

    iget-boolean v0, p0, Lnyb;->j:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    sget-object v0, Lnyb;->b:Lsun/misc/Unsafe;

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lnyb;->c:[I

    array-length v3, v3

    if-ge v1, v3, :cond_4

    invoke-direct {p0, v1}, Lnyb;->z(I)I

    move-result v3

    invoke-static {v3}, Lnyb;->y(I)I

    move-result v4

    invoke-direct {p0, v1}, Lnyb;->p(I)I

    move-result v5

    invoke-static {v3}, Lnyb;->A(I)J

    move-result-wide v6

    sget-object v3, Lnwk;->J:Lnwk;

    iget v3, v3, Lnwk;->Z:I

    if-lt v4, v3, :cond_0

    sget-object v3, Lnwk;->W:Lnwk;

    iget v3, v3, Lnwk;->Z:I

    if-gt v4, v3, :cond_0

    iget-object v3, p0, Lnyb;->c:[I

    add-int/lit8 v8, v1, 0x2

    aget v3, v3, v8

    :cond_0
    packed-switch v4, :pswitch_data_0

    goto/16 :goto_1

    :pswitch_0
    invoke-direct {p0, p1, v5, v1}, Lnyb;->X(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {p1, v6, v7}, Lnzi;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnxy;

    invoke-direct {p0, v1}, Lnyb;->D(I)Lnyo;

    move-result-object v4

    invoke-static {v5, v3, v4}, Lnwd;->J(ILnxy;Lnyo;)I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_1

    :pswitch_1
    invoke-direct {p0, p1, v5, v1}, Lnyb;->X(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {p1, v6, v7}, Lnyb;->B(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v5, v3, v4}, Lnwd;->V(IJ)I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_1

    :pswitch_2
    invoke-direct {p0, p1, v5, v1}, Lnyb;->X(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {p1, v6, v7}, Lnyb;->q(Ljava/lang/Object;J)I

    move-result v3

    invoke-static {v5, v3}, Lnwd;->T(II)I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_1

    :pswitch_3
    invoke-direct {p0, p1, v5, v1}, Lnyb;->X(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {v5}, Lnwd;->az(I)I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_1

    :pswitch_4
    invoke-direct {p0, p1, v5, v1}, Lnyb;->X(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {v5}, Lnwd;->ay(I)I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_1

    :pswitch_5
    invoke-direct {p0, p1, v5, v1}, Lnyb;->X(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {p1, v6, v7}, Lnyb;->q(Ljava/lang/Object;J)I

    move-result v3

    invoke-static {v5, v3}, Lnwd;->I(II)I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_1

    :pswitch_6
    invoke-direct {p0, p1, v5, v1}, Lnyb;->X(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {p1, v6, v7}, Lnyb;->q(Ljava/lang/Object;J)I

    move-result v3

    invoke-static {v5, v3}, Lnwd;->aa(II)I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_1

    :pswitch_7
    invoke-direct {p0, p1, v5, v1}, Lnyb;->X(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {p1, v6, v7}, Lnzi;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnvt;

    invoke-static {v5, v3}, Lnwd;->G(ILnvt;)I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_1

    :pswitch_8
    invoke-direct {p0, p1, v5, v1}, Lnyb;->X(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {p1, v6, v7}, Lnzi;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-direct {p0, v1}, Lnyb;->D(I)Lnyo;

    move-result-object v4

    invoke-static {v5, v3, v4}, Lnyp;->i(ILjava/lang/Object;Lnyo;)I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_1

    :pswitch_9
    invoke-direct {p0, p1, v5, v1}, Lnyb;->X(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {p1, v6, v7}, Lnzi;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    instance-of v4, v3, Lnvt;

    if-eqz v4, :cond_1

    check-cast v3, Lnvt;

    invoke-static {v5, v3}, Lnwd;->G(ILnvt;)I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_1

    :cond_1
    check-cast v3, Ljava/lang/String;

    invoke-static {v5, v3}, Lnwd;->X(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_1

    :pswitch_a
    invoke-direct {p0, p1, v5, v1}, Lnyb;->X(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {v5}, Lnwd;->at(I)I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_1

    :pswitch_b
    invoke-direct {p0, p1, v5, v1}, Lnyb;->X(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {v5}, Lnwd;->av(I)I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_1

    :pswitch_c
    invoke-direct {p0, p1, v5, v1}, Lnyb;->X(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {v5}, Lnwd;->aw(I)I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_1

    :pswitch_d
    invoke-direct {p0, p1, v5, v1}, Lnyb;->X(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {p1, v6, v7}, Lnyb;->q(Ljava/lang/Object;J)I

    move-result v3

    invoke-static {v5, v3}, Lnwd;->K(II)I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_1

    :pswitch_e
    invoke-direct {p0, p1, v5, v1}, Lnyb;->X(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {p1, v6, v7}, Lnyb;->B(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v5, v3, v4}, Lnwd;->ac(IJ)I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_1

    :pswitch_f
    invoke-direct {p0, p1, v5, v1}, Lnyb;->X(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {p1, v6, v7}, Lnyb;->B(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v5, v3, v4}, Lnwd;->M(IJ)I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_1

    :pswitch_10
    invoke-direct {p0, p1, v5, v1}, Lnyb;->X(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {v5}, Lnwd;->ax(I)I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_1

    :pswitch_11
    invoke-direct {p0, p1, v5, v1}, Lnyb;->X(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {v5}, Lnwd;->au(I)I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_1

    :pswitch_12
    invoke-static {p1, v6, v7}, Lnzi;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-direct {p0, v1}, Lnyb;->E(I)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v5, v3, v4}, Lkwp;->T(ILjava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_1

    :pswitch_13
    invoke-static {p1, v6, v7}, Lnyb;->I(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v3

    invoke-direct {p0, v1}, Lnyb;->D(I)Lnyo;

    move-result-object v4

    invoke-static {v5, v3, v4}, Lnyp;->f(ILjava/util/List;Lnyo;)I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_1

    :pswitch_14
    invoke-virtual {v0, p1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v3}, Lnyp;->l(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_3

    invoke-static {v5}, Lnwd;->Z(I)I

    move-result v4

    invoke-static {v3}, Lnwd;->ab(I)I

    move-result v5

    add-int/2addr v4, v5

    add-int/2addr v4, v3

    add-int/2addr v2, v4

    goto/16 :goto_1

    :pswitch_15
    invoke-virtual {v0, p1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v3}, Lnyp;->k(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_3

    invoke-static {v5}, Lnwd;->Z(I)I

    move-result v4

    invoke-static {v3}, Lnwd;->ab(I)I

    move-result v5

    add-int/2addr v4, v5

    add-int/2addr v4, v3

    add-int/2addr v2, v4

    goto/16 :goto_1

    :pswitch_16
    invoke-virtual {v0, p1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v3}, Lnyp;->e(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_3

    invoke-static {v5}, Lnwd;->Z(I)I

    move-result v4

    invoke-static {v3}, Lnwd;->ab(I)I

    move-result v5

    add-int/2addr v4, v5

    add-int/2addr v4, v3

    add-int/2addr v2, v4

    goto/16 :goto_1

    :pswitch_17
    invoke-virtual {v0, p1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v3}, Lnyp;->d(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_3

    invoke-static {v5}, Lnwd;->Z(I)I

    move-result v4

    invoke-static {v3}, Lnwd;->ab(I)I

    move-result v5

    add-int/2addr v4, v5

    add-int/2addr v4, v3

    add-int/2addr v2, v4

    goto/16 :goto_1

    :pswitch_18
    invoke-virtual {v0, p1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v3}, Lnyp;->c(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_3

    invoke-static {v5}, Lnwd;->Z(I)I

    move-result v4

    invoke-static {v3}, Lnwd;->ab(I)I

    move-result v5

    add-int/2addr v4, v5

    add-int/2addr v4, v3

    add-int/2addr v2, v4

    goto/16 :goto_1

    :pswitch_19
    invoke-virtual {v0, p1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v3}, Lnyp;->n(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_3

    invoke-static {v5}, Lnwd;->Z(I)I

    move-result v4

    invoke-static {v3}, Lnwd;->ab(I)I

    move-result v5

    add-int/2addr v4, v5

    add-int/2addr v4, v3

    add-int/2addr v2, v4

    goto/16 :goto_1

    :pswitch_1a
    invoke-virtual {v0, p1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v3}, Lnyp;->a(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_3

    invoke-static {v5}, Lnwd;->Z(I)I

    move-result v4

    invoke-static {v3}, Lnwd;->ab(I)I

    move-result v5

    add-int/2addr v4, v5

    add-int/2addr v4, v3

    add-int/2addr v2, v4

    goto/16 :goto_1

    :pswitch_1b
    invoke-virtual {v0, p1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v3}, Lnyp;->d(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_3

    invoke-static {v5}, Lnwd;->Z(I)I

    move-result v4

    invoke-static {v3}, Lnwd;->ab(I)I

    move-result v5

    add-int/2addr v4, v5

    add-int/2addr v4, v3

    add-int/2addr v2, v4

    goto/16 :goto_1

    :pswitch_1c
    invoke-virtual {v0, p1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v3}, Lnyp;->e(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_3

    invoke-static {v5}, Lnwd;->Z(I)I

    move-result v4

    invoke-static {v3}, Lnwd;->ab(I)I

    move-result v5

    add-int/2addr v4, v5

    add-int/2addr v4, v3

    add-int/2addr v2, v4

    goto/16 :goto_1

    :pswitch_1d
    invoke-virtual {v0, p1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v3}, Lnyp;->g(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_3

    invoke-static {v5}, Lnwd;->Z(I)I

    move-result v4

    invoke-static {v3}, Lnwd;->ab(I)I

    move-result v5

    add-int/2addr v4, v5

    add-int/2addr v4, v3

    add-int/2addr v2, v4

    goto/16 :goto_1

    :pswitch_1e
    invoke-virtual {v0, p1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v3}, Lnyp;->o(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_3

    invoke-static {v5}, Lnwd;->Z(I)I

    move-result v4

    invoke-static {v3}, Lnwd;->ab(I)I

    move-result v5

    add-int/2addr v4, v5

    add-int/2addr v4, v3

    add-int/2addr v2, v4

    goto/16 :goto_1

    :pswitch_1f
    invoke-virtual {v0, p1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v3}, Lnyp;->h(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_3

    invoke-static {v5}, Lnwd;->Z(I)I

    move-result v4

    invoke-static {v3}, Lnwd;->ab(I)I

    move-result v5

    add-int/2addr v4, v5

    add-int/2addr v4, v3

    add-int/2addr v2, v4

    goto/16 :goto_1

    :pswitch_20
    invoke-virtual {v0, p1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v3}, Lnyp;->d(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_3

    invoke-static {v5}, Lnwd;->Z(I)I

    move-result v4

    invoke-static {v3}, Lnwd;->ab(I)I

    move-result v5

    add-int/2addr v4, v5

    add-int/2addr v4, v3

    add-int/2addr v2, v4

    goto/16 :goto_1

    :pswitch_21
    invoke-virtual {v0, p1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v3}, Lnyp;->e(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_3

    invoke-static {v5}, Lnwd;->Z(I)I

    move-result v4

    invoke-static {v3}, Lnwd;->ab(I)I

    move-result v5

    add-int/2addr v4, v5

    add-int/2addr v4, v3

    add-int/2addr v2, v4

    goto/16 :goto_1

    :pswitch_22
    invoke-static {p1, v6, v7}, Lnyb;->I(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v3

    invoke-static {v5, v3}, Lnyp;->x(ILjava/util/List;)I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_1

    :pswitch_23
    invoke-static {p1, v6, v7}, Lnyb;->I(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v3

    invoke-static {v5, v3}, Lnyp;->w(ILjava/util/List;)I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_1

    :pswitch_24
    invoke-static {p1, v6, v7}, Lnyb;->I(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v3

    invoke-static {v5, v3}, Lnyp;->t(ILjava/util/List;)I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_1

    :pswitch_25
    invoke-static {p1, v6, v7}, Lnyb;->I(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v3

    invoke-static {v5, v3}, Lnyp;->s(ILjava/util/List;)I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_1

    :pswitch_26
    invoke-static {p1, v6, v7}, Lnyb;->I(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v3

    invoke-static {v5, v3}, Lnyp;->r(ILjava/util/List;)I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_1

    :pswitch_27
    invoke-static {p1, v6, v7}, Lnyb;->I(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v3

    invoke-static {v5, v3}, Lnyp;->y(ILjava/util/List;)I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_1

    :pswitch_28
    invoke-static {p1, v6, v7}, Lnyb;->I(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v3

    invoke-static {v5, v3}, Lnyp;->b(ILjava/util/List;)I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_1

    :pswitch_29
    invoke-static {p1, v6, v7}, Lnyb;->I(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v3

    invoke-direct {p0, v1}, Lnyb;->D(I)Lnyo;

    move-result-object v4

    invoke-static {v5, v3, v4}, Lnyp;->j(ILjava/util/List;Lnyo;)I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_1

    :pswitch_2a
    invoke-static {p1, v6, v7}, Lnyb;->I(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v3

    invoke-static {v5, v3}, Lnyp;->m(ILjava/util/List;)I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_1

    :pswitch_2b
    invoke-static {p1, v6, v7}, Lnyb;->I(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v3

    invoke-static {v5, v3}, Lnyp;->q(ILjava/util/List;)I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_1

    :pswitch_2c
    invoke-static {p1, v6, v7}, Lnyb;->I(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v3

    invoke-static {v5, v3}, Lnyp;->s(ILjava/util/List;)I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_1

    :pswitch_2d
    invoke-static {p1, v6, v7}, Lnyb;->I(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v3

    invoke-static {v5, v3}, Lnyp;->t(ILjava/util/List;)I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_1

    :pswitch_2e
    invoke-static {p1, v6, v7}, Lnyb;->I(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v3

    invoke-static {v5, v3}, Lnyp;->u(ILjava/util/List;)I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_1

    :pswitch_2f
    invoke-static {p1, v6, v7}, Lnyb;->I(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v3

    invoke-static {v5, v3}, Lnyp;->z(ILjava/util/List;)I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_1

    :pswitch_30
    invoke-static {p1, v6, v7}, Lnyb;->I(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v3

    invoke-static {v5, v3}, Lnyp;->v(ILjava/util/List;)I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_1

    :pswitch_31
    invoke-static {p1, v6, v7}, Lnyb;->I(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v3

    invoke-static {v5, v3}, Lnyp;->s(ILjava/util/List;)I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_1

    :pswitch_32
    invoke-static {p1, v6, v7}, Lnyb;->I(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v3

    invoke-static {v5, v3}, Lnyp;->t(ILjava/util/List;)I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_1

    :pswitch_33
    invoke-direct {p0, p1, v1}, Lnyb;->T(Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {p1, v6, v7}, Lnzi;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnxy;

    invoke-direct {p0, v1}, Lnyb;->D(I)Lnyo;

    move-result-object v4

    invoke-static {v5, v3, v4}, Lnwd;->J(ILnxy;Lnyo;)I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_1

    :pswitch_34
    invoke-direct {p0, p1, v1}, Lnyb;->T(Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {p1, v6, v7}, Lnzi;->f(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v5, v3, v4}, Lnwd;->V(IJ)I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_1

    :pswitch_35
    invoke-direct {p0, p1, v1}, Lnyb;->T(Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {p1, v6, v7}, Lnzi;->d(Ljava/lang/Object;J)I

    move-result v3

    invoke-static {v5, v3}, Lnwd;->T(II)I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_1

    :pswitch_36
    invoke-direct {p0, p1, v1}, Lnyb;->T(Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {v5}, Lnwd;->az(I)I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_1

    :pswitch_37
    invoke-direct {p0, p1, v1}, Lnyb;->T(Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {v5}, Lnwd;->ay(I)I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_1

    :pswitch_38
    invoke-direct {p0, p1, v1}, Lnyb;->T(Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {p1, v6, v7}, Lnzi;->d(Ljava/lang/Object;J)I

    move-result v3

    invoke-static {v5, v3}, Lnwd;->I(II)I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_1

    :pswitch_39
    invoke-direct {p0, p1, v1}, Lnyb;->T(Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {p1, v6, v7}, Lnzi;->d(Ljava/lang/Object;J)I

    move-result v3

    invoke-static {v5, v3}, Lnwd;->aa(II)I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_1

    :pswitch_3a
    invoke-direct {p0, p1, v1}, Lnyb;->T(Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {p1, v6, v7}, Lnzi;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnvt;

    invoke-static {v5, v3}, Lnwd;->G(ILnvt;)I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_1

    :pswitch_3b
    invoke-direct {p0, p1, v1}, Lnyb;->T(Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {p1, v6, v7}, Lnzi;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-direct {p0, v1}, Lnyb;->D(I)Lnyo;

    move-result-object v4

    invoke-static {v5, v3, v4}, Lnyp;->i(ILjava/lang/Object;Lnyo;)I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_1

    :pswitch_3c
    invoke-direct {p0, p1, v1}, Lnyb;->T(Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {p1, v6, v7}, Lnzi;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    instance-of v4, v3, Lnvt;

    if-eqz v4, :cond_2

    check-cast v3, Lnvt;

    invoke-static {v5, v3}, Lnwd;->G(ILnvt;)I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_1

    :cond_2
    check-cast v3, Ljava/lang/String;

    invoke-static {v5, v3}, Lnwd;->X(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_1

    :pswitch_3d
    invoke-direct {p0, p1, v1}, Lnyb;->T(Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {v5}, Lnwd;->at(I)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_1

    :pswitch_3e
    invoke-direct {p0, p1, v1}, Lnyb;->T(Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {v5}, Lnwd;->av(I)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_1

    :pswitch_3f
    invoke-direct {p0, p1, v1}, Lnyb;->T(Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {v5}, Lnwd;->aw(I)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_1

    :pswitch_40
    invoke-direct {p0, p1, v1}, Lnyb;->T(Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {p1, v6, v7}, Lnzi;->d(Ljava/lang/Object;J)I

    move-result v3

    invoke-static {v5, v3}, Lnwd;->K(II)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_1

    :pswitch_41
    invoke-direct {p0, p1, v1}, Lnyb;->T(Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {p1, v6, v7}, Lnzi;->f(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v5, v3, v4}, Lnwd;->ac(IJ)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_1

    :pswitch_42
    invoke-direct {p0, p1, v1}, Lnyb;->T(Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {p1, v6, v7}, Lnzi;->f(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v5, v3, v4}, Lnwd;->M(IJ)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_1

    :pswitch_43
    invoke-direct {p0, p1, v1}, Lnyb;->T(Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {v5}, Lnwd;->ax(I)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_1

    :pswitch_44
    invoke-direct {p0, p1, v1}, Lnyb;->T(Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {v5}, Lnwd;->au(I)I

    move-result v3

    add-int/2addr v2, v3

    :cond_3
    :goto_1
    add-int/lit8 v1, v1, 0x3

    goto/16 :goto_0

    :cond_4
    invoke-static {p1}, Lnyb;->aa(Ljava/lang/Object;)I

    move-result p1

    add-int/2addr v2, p1

    goto/16 :goto_7

    :cond_5
    sget-object v0, Lnyb;->b:Lsun/misc/Unsafe;

    const v2, 0xfffff

    const/4 v3, 0x0

    const/4 v4, 0x0

    const v5, 0xfffff

    const/4 v6, 0x0

    :goto_2
    iget-object v7, p0, Lnyb;->c:[I

    array-length v7, v7

    if-ge v3, v7, :cond_b

    invoke-direct {p0, v3}, Lnyb;->z(I)I

    move-result v7

    invoke-direct {p0, v3}, Lnyb;->p(I)I

    move-result v8

    invoke-static {v7}, Lnyb;->y(I)I

    move-result v9

    const/16 v10, 0x11

    if-gt v9, v10, :cond_7

    iget-object v10, p0, Lnyb;->c:[I

    add-int/lit8 v11, v3, 0x2

    aget v10, v10, v11

    and-int v11, v10, v2

    ushr-int/lit8 v10, v10, 0x14

    if-eq v11, v5, :cond_6

    int-to-long v5, v11

    invoke-virtual {v0, p1, v5, v6}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v6

    move v5, v11

    :cond_6
    const/4 v11, 0x1

    shl-int v10, v11, v10

    goto :goto_3

    :cond_7
    const/4 v10, 0x0

    :goto_3
    invoke-static {v7}, Lnyb;->A(I)J

    move-result-wide v11

    packed-switch v9, :pswitch_data_1

    goto/16 :goto_4

    :pswitch_45
    invoke-direct {p0, p1, v8, v3}, Lnyb;->X(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_a

    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lnxy;

    invoke-direct {p0, v3}, Lnyb;->D(I)Lnyo;

    move-result-object v9

    invoke-static {v8, v7, v9}, Lnwd;->J(ILnxy;Lnyo;)I

    move-result v7

    add-int/2addr v4, v7

    goto/16 :goto_4

    :pswitch_46
    invoke-direct {p0, p1, v8, v3}, Lnyb;->X(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_a

    invoke-static {p1, v11, v12}, Lnyb;->B(Ljava/lang/Object;J)J

    move-result-wide v9

    invoke-static {v8, v9, v10}, Lnwd;->V(IJ)I

    move-result v7

    add-int/2addr v4, v7

    goto/16 :goto_4

    :pswitch_47
    invoke-direct {p0, p1, v8, v3}, Lnyb;->X(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_a

    invoke-static {p1, v11, v12}, Lnyb;->q(Ljava/lang/Object;J)I

    move-result v7

    invoke-static {v8, v7}, Lnwd;->T(II)I

    move-result v7

    add-int/2addr v4, v7

    goto/16 :goto_4

    :pswitch_48
    invoke-direct {p0, p1, v8, v3}, Lnyb;->X(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_a

    invoke-static {v8}, Lnwd;->az(I)I

    move-result v7

    add-int/2addr v4, v7

    goto/16 :goto_4

    :pswitch_49
    invoke-direct {p0, p1, v8, v3}, Lnyb;->X(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_a

    invoke-static {v8}, Lnwd;->ay(I)I

    move-result v7

    add-int/2addr v4, v7

    goto/16 :goto_4

    :pswitch_4a
    invoke-direct {p0, p1, v8, v3}, Lnyb;->X(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_a

    invoke-static {p1, v11, v12}, Lnyb;->q(Ljava/lang/Object;J)I

    move-result v7

    invoke-static {v8, v7}, Lnwd;->I(II)I

    move-result v7

    add-int/2addr v4, v7

    goto/16 :goto_4

    :pswitch_4b
    invoke-direct {p0, p1, v8, v3}, Lnyb;->X(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_a

    invoke-static {p1, v11, v12}, Lnyb;->q(Ljava/lang/Object;J)I

    move-result v7

    invoke-static {v8, v7}, Lnwd;->aa(II)I

    move-result v7

    add-int/2addr v4, v7

    goto/16 :goto_4

    :pswitch_4c
    invoke-direct {p0, p1, v8, v3}, Lnyb;->X(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_a

    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lnvt;

    invoke-static {v8, v7}, Lnwd;->G(ILnvt;)I

    move-result v7

    add-int/2addr v4, v7

    goto/16 :goto_4

    :pswitch_4d
    invoke-direct {p0, p1, v8, v3}, Lnyb;->X(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_a

    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    invoke-direct {p0, v3}, Lnyb;->D(I)Lnyo;

    move-result-object v9

    invoke-static {v8, v7, v9}, Lnyp;->i(ILjava/lang/Object;Lnyo;)I

    move-result v7

    add-int/2addr v4, v7

    goto/16 :goto_4

    :pswitch_4e
    invoke-direct {p0, p1, v8, v3}, Lnyb;->X(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_a

    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    instance-of v9, v7, Lnvt;

    if-eqz v9, :cond_8

    check-cast v7, Lnvt;

    invoke-static {v8, v7}, Lnwd;->G(ILnvt;)I

    move-result v7

    add-int/2addr v4, v7

    goto/16 :goto_4

    :cond_8
    check-cast v7, Ljava/lang/String;

    invoke-static {v8, v7}, Lnwd;->X(ILjava/lang/String;)I

    move-result v7

    add-int/2addr v4, v7

    goto/16 :goto_4

    :pswitch_4f
    invoke-direct {p0, p1, v8, v3}, Lnyb;->X(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_a

    invoke-static {v8}, Lnwd;->at(I)I

    move-result v7

    add-int/2addr v4, v7

    goto/16 :goto_4

    :pswitch_50
    invoke-direct {p0, p1, v8, v3}, Lnyb;->X(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_a

    invoke-static {v8}, Lnwd;->av(I)I

    move-result v7

    add-int/2addr v4, v7

    goto/16 :goto_4

    :pswitch_51
    invoke-direct {p0, p1, v8, v3}, Lnyb;->X(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_a

    invoke-static {v8}, Lnwd;->aw(I)I

    move-result v7

    add-int/2addr v4, v7

    goto/16 :goto_4

    :pswitch_52
    invoke-direct {p0, p1, v8, v3}, Lnyb;->X(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_a

    invoke-static {p1, v11, v12}, Lnyb;->q(Ljava/lang/Object;J)I

    move-result v7

    invoke-static {v8, v7}, Lnwd;->K(II)I

    move-result v7

    add-int/2addr v4, v7

    goto/16 :goto_4

    :pswitch_53
    invoke-direct {p0, p1, v8, v3}, Lnyb;->X(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_a

    invoke-static {p1, v11, v12}, Lnyb;->B(Ljava/lang/Object;J)J

    move-result-wide v9

    invoke-static {v8, v9, v10}, Lnwd;->ac(IJ)I

    move-result v7

    add-int/2addr v4, v7

    goto/16 :goto_4

    :pswitch_54
    invoke-direct {p0, p1, v8, v3}, Lnyb;->X(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_a

    invoke-static {p1, v11, v12}, Lnyb;->B(Ljava/lang/Object;J)J

    move-result-wide v9

    invoke-static {v8, v9, v10}, Lnwd;->M(IJ)I

    move-result v7

    add-int/2addr v4, v7

    goto/16 :goto_4

    :pswitch_55
    invoke-direct {p0, p1, v8, v3}, Lnyb;->X(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_a

    invoke-static {v8}, Lnwd;->ax(I)I

    move-result v7

    add-int/2addr v4, v7

    goto/16 :goto_4

    :pswitch_56
    invoke-direct {p0, p1, v8, v3}, Lnyb;->X(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_a

    invoke-static {v8}, Lnwd;->au(I)I

    move-result v7

    add-int/2addr v4, v7

    goto/16 :goto_4

    :pswitch_57
    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    invoke-direct {p0, v3}, Lnyb;->E(I)Ljava/lang/Object;

    move-result-object v9

    invoke-static {v8, v7, v9}, Lkwp;->T(ILjava/lang/Object;Ljava/lang/Object;)I

    move-result v7

    add-int/2addr v4, v7

    goto/16 :goto_4

    :pswitch_58
    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-direct {p0, v3}, Lnyb;->D(I)Lnyo;

    move-result-object v9

    invoke-static {v8, v7, v9}, Lnyp;->f(ILjava/util/List;Lnyo;)I

    move-result v7

    add-int/2addr v4, v7

    goto/16 :goto_4

    :pswitch_59
    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v7}, Lnyp;->l(Ljava/util/List;)I

    move-result v7

    if-lez v7, :cond_a

    invoke-static {v8}, Lnwd;->Z(I)I

    move-result v8

    invoke-static {v7}, Lnwd;->ab(I)I

    move-result v9

    add-int/2addr v8, v9

    add-int/2addr v8, v7

    add-int/2addr v4, v8

    goto/16 :goto_4

    :pswitch_5a
    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v7}, Lnyp;->k(Ljava/util/List;)I

    move-result v7

    if-lez v7, :cond_a

    invoke-static {v8}, Lnwd;->Z(I)I

    move-result v8

    invoke-static {v7}, Lnwd;->ab(I)I

    move-result v9

    add-int/2addr v8, v9

    add-int/2addr v8, v7

    add-int/2addr v4, v8

    goto/16 :goto_4

    :pswitch_5b
    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v7}, Lnyp;->e(Ljava/util/List;)I

    move-result v7

    if-lez v7, :cond_a

    invoke-static {v8}, Lnwd;->Z(I)I

    move-result v8

    invoke-static {v7}, Lnwd;->ab(I)I

    move-result v9

    add-int/2addr v8, v9

    add-int/2addr v8, v7

    add-int/2addr v4, v8

    goto/16 :goto_4

    :pswitch_5c
    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v7}, Lnyp;->d(Ljava/util/List;)I

    move-result v7

    if-lez v7, :cond_a

    invoke-static {v8}, Lnwd;->Z(I)I

    move-result v8

    invoke-static {v7}, Lnwd;->ab(I)I

    move-result v9

    add-int/2addr v8, v9

    add-int/2addr v8, v7

    add-int/2addr v4, v8

    goto/16 :goto_4

    :pswitch_5d
    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v7}, Lnyp;->c(Ljava/util/List;)I

    move-result v7

    if-lez v7, :cond_a

    invoke-static {v8}, Lnwd;->Z(I)I

    move-result v8

    invoke-static {v7}, Lnwd;->ab(I)I

    move-result v9

    add-int/2addr v8, v9

    add-int/2addr v8, v7

    add-int/2addr v4, v8

    goto/16 :goto_4

    :pswitch_5e
    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v7}, Lnyp;->n(Ljava/util/List;)I

    move-result v7

    if-lez v7, :cond_a

    invoke-static {v8}, Lnwd;->Z(I)I

    move-result v8

    invoke-static {v7}, Lnwd;->ab(I)I

    move-result v9

    add-int/2addr v8, v9

    add-int/2addr v8, v7

    add-int/2addr v4, v8

    goto/16 :goto_4

    :pswitch_5f
    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v7}, Lnyp;->a(Ljava/util/List;)I

    move-result v7

    if-lez v7, :cond_a

    invoke-static {v8}, Lnwd;->Z(I)I

    move-result v8

    invoke-static {v7}, Lnwd;->ab(I)I

    move-result v9

    add-int/2addr v8, v9

    add-int/2addr v8, v7

    add-int/2addr v4, v8

    goto/16 :goto_4

    :pswitch_60
    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v7}, Lnyp;->d(Ljava/util/List;)I

    move-result v7

    if-lez v7, :cond_a

    invoke-static {v8}, Lnwd;->Z(I)I

    move-result v8

    invoke-static {v7}, Lnwd;->ab(I)I

    move-result v9

    add-int/2addr v8, v9

    add-int/2addr v8, v7

    add-int/2addr v4, v8

    goto/16 :goto_4

    :pswitch_61
    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v7}, Lnyp;->e(Ljava/util/List;)I

    move-result v7

    if-lez v7, :cond_a

    invoke-static {v8}, Lnwd;->Z(I)I

    move-result v8

    invoke-static {v7}, Lnwd;->ab(I)I

    move-result v9

    add-int/2addr v8, v9

    add-int/2addr v8, v7

    add-int/2addr v4, v8

    goto/16 :goto_4

    :pswitch_62
    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v7}, Lnyp;->g(Ljava/util/List;)I

    move-result v7

    if-lez v7, :cond_a

    invoke-static {v8}, Lnwd;->Z(I)I

    move-result v8

    invoke-static {v7}, Lnwd;->ab(I)I

    move-result v9

    add-int/2addr v8, v9

    add-int/2addr v8, v7

    add-int/2addr v4, v8

    goto/16 :goto_4

    :pswitch_63
    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v7}, Lnyp;->o(Ljava/util/List;)I

    move-result v7

    if-lez v7, :cond_a

    invoke-static {v8}, Lnwd;->Z(I)I

    move-result v8

    invoke-static {v7}, Lnwd;->ab(I)I

    move-result v9

    add-int/2addr v8, v9

    add-int/2addr v8, v7

    add-int/2addr v4, v8

    goto/16 :goto_4

    :pswitch_64
    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v7}, Lnyp;->h(Ljava/util/List;)I

    move-result v7

    if-lez v7, :cond_a

    invoke-static {v8}, Lnwd;->Z(I)I

    move-result v8

    invoke-static {v7}, Lnwd;->ab(I)I

    move-result v9

    add-int/2addr v8, v9

    add-int/2addr v8, v7

    add-int/2addr v4, v8

    goto/16 :goto_4

    :pswitch_65
    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v7}, Lnyp;->d(Ljava/util/List;)I

    move-result v7

    if-lez v7, :cond_a

    invoke-static {v8}, Lnwd;->Z(I)I

    move-result v8

    invoke-static {v7}, Lnwd;->ab(I)I

    move-result v9

    add-int/2addr v8, v9

    add-int/2addr v8, v7

    add-int/2addr v4, v8

    goto/16 :goto_4

    :pswitch_66
    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v7}, Lnyp;->e(Ljava/util/List;)I

    move-result v7

    if-lez v7, :cond_a

    invoke-static {v8}, Lnwd;->Z(I)I

    move-result v8

    invoke-static {v7}, Lnwd;->ab(I)I

    move-result v9

    add-int/2addr v8, v9

    add-int/2addr v8, v7

    add-int/2addr v4, v8

    goto/16 :goto_4

    :pswitch_67
    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v8, v7}, Lnyp;->x(ILjava/util/List;)I

    move-result v7

    add-int/2addr v4, v7

    goto/16 :goto_4

    :pswitch_68
    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v8, v7}, Lnyp;->w(ILjava/util/List;)I

    move-result v7

    add-int/2addr v4, v7

    goto/16 :goto_4

    :pswitch_69
    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v8, v7}, Lnyp;->t(ILjava/util/List;)I

    move-result v7

    add-int/2addr v4, v7

    goto/16 :goto_4

    :pswitch_6a
    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v8, v7}, Lnyp;->s(ILjava/util/List;)I

    move-result v7

    add-int/2addr v4, v7

    goto/16 :goto_4

    :pswitch_6b
    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v8, v7}, Lnyp;->r(ILjava/util/List;)I

    move-result v7

    add-int/2addr v4, v7

    goto/16 :goto_4

    :pswitch_6c
    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v8, v7}, Lnyp;->y(ILjava/util/List;)I

    move-result v7

    add-int/2addr v4, v7

    goto/16 :goto_4

    :pswitch_6d
    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v8, v7}, Lnyp;->b(ILjava/util/List;)I

    move-result v7

    add-int/2addr v4, v7

    goto/16 :goto_4

    :pswitch_6e
    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-direct {p0, v3}, Lnyb;->D(I)Lnyo;

    move-result-object v9

    invoke-static {v8, v7, v9}, Lnyp;->j(ILjava/util/List;Lnyo;)I

    move-result v7

    add-int/2addr v4, v7

    goto/16 :goto_4

    :pswitch_6f
    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v8, v7}, Lnyp;->m(ILjava/util/List;)I

    move-result v7

    add-int/2addr v4, v7

    goto/16 :goto_4

    :pswitch_70
    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v8, v7}, Lnyp;->q(ILjava/util/List;)I

    move-result v7

    add-int/2addr v4, v7

    goto/16 :goto_4

    :pswitch_71
    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v8, v7}, Lnyp;->s(ILjava/util/List;)I

    move-result v7

    add-int/2addr v4, v7

    goto/16 :goto_4

    :pswitch_72
    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v8, v7}, Lnyp;->t(ILjava/util/List;)I

    move-result v7

    add-int/2addr v4, v7

    goto/16 :goto_4

    :pswitch_73
    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v8, v7}, Lnyp;->u(ILjava/util/List;)I

    move-result v7

    add-int/2addr v4, v7

    goto/16 :goto_4

    :pswitch_74
    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v8, v7}, Lnyp;->z(ILjava/util/List;)I

    move-result v7

    add-int/2addr v4, v7

    goto/16 :goto_4

    :pswitch_75
    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v8, v7}, Lnyp;->v(ILjava/util/List;)I

    move-result v7

    add-int/2addr v4, v7

    goto/16 :goto_4

    :pswitch_76
    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v8, v7}, Lnyp;->s(ILjava/util/List;)I

    move-result v7

    add-int/2addr v4, v7

    goto/16 :goto_4

    :pswitch_77
    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v8, v7}, Lnyp;->t(ILjava/util/List;)I

    move-result v7

    add-int/2addr v4, v7

    goto/16 :goto_4

    :pswitch_78
    and-int v7, v6, v10

    if-eqz v7, :cond_a

    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lnxy;

    invoke-direct {p0, v3}, Lnyb;->D(I)Lnyo;

    move-result-object v9

    invoke-static {v8, v7, v9}, Lnwd;->J(ILnxy;Lnyo;)I

    move-result v7

    add-int/2addr v4, v7

    goto/16 :goto_4

    :pswitch_79
    and-int v7, v6, v10

    if-eqz v7, :cond_a

    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v9

    invoke-static {v8, v9, v10}, Lnwd;->V(IJ)I

    move-result v7

    add-int/2addr v4, v7

    goto/16 :goto_4

    :pswitch_7a
    and-int v7, v6, v10

    if-eqz v7, :cond_a

    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v7

    invoke-static {v8, v7}, Lnwd;->T(II)I

    move-result v7

    add-int/2addr v4, v7

    goto/16 :goto_4

    :pswitch_7b
    and-int v7, v6, v10

    if-eqz v7, :cond_a

    invoke-static {v8}, Lnwd;->az(I)I

    move-result v7

    add-int/2addr v4, v7

    goto/16 :goto_4

    :pswitch_7c
    and-int v7, v6, v10

    if-eqz v7, :cond_a

    invoke-static {v8}, Lnwd;->ay(I)I

    move-result v7

    add-int/2addr v4, v7

    goto/16 :goto_4

    :pswitch_7d
    and-int v7, v6, v10

    if-eqz v7, :cond_a

    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v7

    invoke-static {v8, v7}, Lnwd;->I(II)I

    move-result v7

    add-int/2addr v4, v7

    goto/16 :goto_4

    :pswitch_7e
    and-int v7, v6, v10

    if-eqz v7, :cond_a

    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v7

    invoke-static {v8, v7}, Lnwd;->aa(II)I

    move-result v7

    add-int/2addr v4, v7

    goto/16 :goto_4

    :pswitch_7f
    and-int v7, v6, v10

    if-eqz v7, :cond_a

    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lnvt;

    invoke-static {v8, v7}, Lnwd;->G(ILnvt;)I

    move-result v7

    add-int/2addr v4, v7

    goto/16 :goto_4

    :pswitch_80
    and-int v7, v6, v10

    if-eqz v7, :cond_a

    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    invoke-direct {p0, v3}, Lnyb;->D(I)Lnyo;

    move-result-object v9

    invoke-static {v8, v7, v9}, Lnyp;->i(ILjava/lang/Object;Lnyo;)I

    move-result v7

    add-int/2addr v4, v7

    goto/16 :goto_4

    :pswitch_81
    and-int v7, v6, v10

    if-eqz v7, :cond_a

    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    instance-of v9, v7, Lnvt;

    if-eqz v9, :cond_9

    check-cast v7, Lnvt;

    invoke-static {v8, v7}, Lnwd;->G(ILnvt;)I

    move-result v7

    add-int/2addr v4, v7

    goto :goto_4

    :cond_9
    check-cast v7, Ljava/lang/String;

    invoke-static {v8, v7}, Lnwd;->X(ILjava/lang/String;)I

    move-result v7

    add-int/2addr v4, v7

    goto :goto_4

    :pswitch_82
    and-int v7, v6, v10

    if-eqz v7, :cond_a

    invoke-static {v8}, Lnwd;->at(I)I

    move-result v7

    add-int/2addr v4, v7

    goto :goto_4

    :pswitch_83
    and-int v7, v6, v10

    if-eqz v7, :cond_a

    invoke-static {v8}, Lnwd;->av(I)I

    move-result v7

    add-int/2addr v4, v7

    goto :goto_4

    :pswitch_84
    and-int v7, v6, v10

    if-eqz v7, :cond_a

    invoke-static {v8}, Lnwd;->aw(I)I

    move-result v7

    add-int/2addr v4, v7

    goto :goto_4

    :pswitch_85
    and-int v7, v6, v10

    if-eqz v7, :cond_a

    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v7

    invoke-static {v8, v7}, Lnwd;->K(II)I

    move-result v7

    add-int/2addr v4, v7

    goto :goto_4

    :pswitch_86
    and-int v7, v6, v10

    if-eqz v7, :cond_a

    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v9

    invoke-static {v8, v9, v10}, Lnwd;->ac(IJ)I

    move-result v7

    add-int/2addr v4, v7

    goto :goto_4

    :pswitch_87
    and-int v7, v6, v10

    if-eqz v7, :cond_a

    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v9

    invoke-static {v8, v9, v10}, Lnwd;->M(IJ)I

    move-result v7

    add-int/2addr v4, v7

    goto :goto_4

    :pswitch_88
    and-int v7, v6, v10

    if-eqz v7, :cond_a

    invoke-static {v8}, Lnwd;->ax(I)I

    move-result v7

    add-int/2addr v4, v7

    goto :goto_4

    :pswitch_89
    and-int v7, v6, v10

    if-eqz v7, :cond_a

    invoke-static {v8}, Lnwd;->au(I)I

    move-result v7

    add-int/2addr v4, v7

    :cond_a
    :goto_4
    add-int/lit8 v3, v3, 0x3

    goto/16 :goto_2

    :cond_b
    invoke-static {p1}, Lnyb;->aa(Ljava/lang/Object;)I

    move-result v0

    add-int v2, v4, v0

    iget-boolean v0, p0, Lnyb;->h:Z

    if-eqz v0, :cond_e

    invoke-static {p1}, Lkwp;->Y(Ljava/lang/Object;)Lnwj;

    move-result-object p1

    const/4 v0, 0x0

    :goto_5
    iget-object v3, p1, Lnwj;->b:Lnyw;

    invoke-virtual {v3}, Lnyw;->a()I

    move-result v3

    if-ge v1, v3, :cond_c

    iget-object v3, p1, Lnwj;->b:Lnyw;

    invoke-virtual {v3, v1}, Lnyw;->f(I)Ljava/util/Map$Entry;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lnwr;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v4, v3}, Lnwj;->j(Lnwr;Ljava/lang/Object;)I

    move-result v3

    add-int/2addr v0, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_c
    iget-object p1, p1, Lnwj;->b:Lnyw;

    invoke-virtual {p1}, Lnyw;->c()Ljava/lang/Iterable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnwr;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v3, v1}, Lnwj;->j(Lnwr;Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_6

    :cond_d
    add-int/2addr v2, v0

    goto :goto_7

    :cond_e
    :goto_7
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
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

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_89
        :pswitch_88
        :pswitch_87
        :pswitch_86
        :pswitch_85
        :pswitch_84
        :pswitch_83
        :pswitch_82
        :pswitch_81
        :pswitch_80
        :pswitch_7f
        :pswitch_7e
        :pswitch_7d
        :pswitch_7c
        :pswitch_7b
        :pswitch_7a
        :pswitch_79
        :pswitch_78
        :pswitch_77
        :pswitch_76
        :pswitch_75
        :pswitch_74
        :pswitch_73
        :pswitch_72
        :pswitch_71
        :pswitch_70
        :pswitch_6f
        :pswitch_6e
        :pswitch_6d
        :pswitch_6c
        :pswitch_6b
        :pswitch_6a
        :pswitch_69
        :pswitch_68
        :pswitch_67
        :pswitch_66
        :pswitch_65
        :pswitch_64
        :pswitch_63
        :pswitch_62
        :pswitch_61
        :pswitch_60
        :pswitch_5f
        :pswitch_5e
        :pswitch_5d
        :pswitch_5c
        :pswitch_5b
        :pswitch_5a
        :pswitch_59
        :pswitch_58
        :pswitch_57
        :pswitch_56
        :pswitch_55
        :pswitch_54
        :pswitch_53
        :pswitch_52
        :pswitch_51
        :pswitch_50
        :pswitch_4f
        :pswitch_4e
        :pswitch_4d
        :pswitch_4c
        :pswitch_4b
        :pswitch_4a
        :pswitch_49
        :pswitch_48
        :pswitch_47
        :pswitch_46
        :pswitch_45
    .end packed-switch
.end method

.method public final b(Ljava/lang/Object;)I
    .locals 8

    iget-object v0, p0, Lnyb;->c:[I

    array-length v0, v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    invoke-direct {p0, v1}, Lnyb;->z(I)I

    move-result v3

    invoke-direct {p0, v1}, Lnyb;->p(I)I

    move-result v4

    invoke-static {v3}, Lnyb;->A(I)J

    move-result-wide v5

    invoke-static {v3}, Lnyb;->y(I)I

    move-result v3

    const/16 v7, 0x25

    packed-switch v3, :pswitch_data_0

    goto/16 :goto_3

    :pswitch_0
    invoke-direct {p0, p1, v4, v1}, Lnyb;->X(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {p1, v5, v6}, Lnzi;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    mul-int/lit8 v2, v2, 0x35

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_3

    :pswitch_1
    invoke-direct {p0, p1, v4, v1}, Lnyb;->X(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_2

    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lnyb;->B(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lnxb;->b(J)I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_3

    :pswitch_2
    invoke-direct {p0, p1, v4, v1}, Lnyb;->X(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_2

    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lnyb;->q(Ljava/lang/Object;J)I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_3

    :pswitch_3
    invoke-direct {p0, p1, v4, v1}, Lnyb;->X(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_2

    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lnyb;->B(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lnxb;->b(J)I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_3

    :pswitch_4
    invoke-direct {p0, p1, v4, v1}, Lnyb;->X(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_2

    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lnyb;->q(Ljava/lang/Object;J)I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_3

    :pswitch_5
    invoke-direct {p0, p1, v4, v1}, Lnyb;->X(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_2

    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lnyb;->q(Ljava/lang/Object;J)I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_3

    :pswitch_6
    invoke-direct {p0, p1, v4, v1}, Lnyb;->X(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_2

    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lnyb;->q(Ljava/lang/Object;J)I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_3

    :pswitch_7
    invoke-direct {p0, p1, v4, v1}, Lnyb;->X(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_2

    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lnzi;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_3

    :pswitch_8
    invoke-direct {p0, p1, v4, v1}, Lnyb;->X(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {p1, v5, v6}, Lnzi;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    mul-int/lit8 v2, v2, 0x35

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_3

    :pswitch_9
    invoke-direct {p0, p1, v4, v1}, Lnyb;->X(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_2

    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lnzi;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_3

    :pswitch_a
    invoke-direct {p0, p1, v4, v1}, Lnyb;->X(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_2

    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lnyb;->Y(Ljava/lang/Object;J)Z

    move-result v3

    invoke-static {v3}, Lnxb;->a(Z)I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_3

    :pswitch_b
    invoke-direct {p0, p1, v4, v1}, Lnyb;->X(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_2

    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lnyb;->q(Ljava/lang/Object;J)I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_3

    :pswitch_c
    invoke-direct {p0, p1, v4, v1}, Lnyb;->X(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_2

    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lnyb;->B(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lnxb;->b(J)I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_3

    :pswitch_d
    invoke-direct {p0, p1, v4, v1}, Lnyb;->X(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_2

    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lnyb;->q(Ljava/lang/Object;J)I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_3

    :pswitch_e
    invoke-direct {p0, p1, v4, v1}, Lnyb;->X(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_2

    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lnyb;->B(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lnxb;->b(J)I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_3

    :pswitch_f
    invoke-direct {p0, p1, v4, v1}, Lnyb;->X(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_2

    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lnyb;->B(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lnxb;->b(J)I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_3

    :pswitch_10
    invoke-direct {p0, p1, v4, v1}, Lnyb;->X(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_2

    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lnyb;->o(Ljava/lang/Object;J)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_3

    :pswitch_11
    invoke-direct {p0, p1, v4, v1}, Lnyb;->X(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_2

    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lnyb;->n(Ljava/lang/Object;J)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    invoke-static {v3, v4}, Lnxb;->b(J)I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_3

    :pswitch_12
    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lnzi;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_3

    :pswitch_13
    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lnzi;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_3

    :pswitch_14
    invoke-static {p1, v5, v6}, Lnzi;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v7

    goto :goto_1

    :cond_0
    :goto_1
    mul-int/lit8 v2, v2, 0x35

    add-int/2addr v2, v7

    goto/16 :goto_3

    :pswitch_15
    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lnzi;->f(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lnxb;->b(J)I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_3

    :pswitch_16
    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lnzi;->d(Ljava/lang/Object;J)I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_3

    :pswitch_17
    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lnzi;->f(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lnxb;->b(J)I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_3

    :pswitch_18
    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lnzi;->d(Ljava/lang/Object;J)I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_3

    :pswitch_19
    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lnzi;->d(Ljava/lang/Object;J)I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_3

    :pswitch_1a
    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lnzi;->d(Ljava/lang/Object;J)I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_3

    :pswitch_1b
    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lnzi;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_3

    :pswitch_1c
    invoke-static {p1, v5, v6}, Lnzi;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v7

    goto :goto_2

    :cond_1
    :goto_2
    mul-int/lit8 v2, v2, 0x35

    add-int/2addr v2, v7

    goto :goto_3

    :pswitch_1d
    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lnzi;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_3

    :pswitch_1e
    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lnzi;->w(Ljava/lang/Object;J)Z

    move-result v3

    invoke-static {v3}, Lnxb;->a(Z)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_3

    :pswitch_1f
    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lnzi;->d(Ljava/lang/Object;J)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_3

    :pswitch_20
    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lnzi;->f(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lnxb;->b(J)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_3

    :pswitch_21
    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lnzi;->d(Ljava/lang/Object;J)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_3

    :pswitch_22
    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lnzi;->f(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lnxb;->b(J)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_3

    :pswitch_23
    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lnzi;->f(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lnxb;->b(J)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_3

    :pswitch_24
    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lnzi;->c(Ljava/lang/Object;J)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_3

    :pswitch_25
    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lnzi;->b(Ljava/lang/Object;J)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    invoke-static {v3, v4}, Lnxb;->b(J)I

    move-result v3

    add-int/2addr v2, v3

    :cond_2
    :goto_3
    add-int/lit8 v1, v1, 0x3

    goto/16 :goto_0

    :cond_3
    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1}, Lkwp;->N(Ljava/lang/Object;)Lnza;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v2, v0

    iget-boolean v0, p0, Lnyb;->h:Z

    if-eqz v0, :cond_4

    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1}, Lkwp;->Y(Ljava/lang/Object;)Lnwj;

    move-result-object p1

    invoke-virtual {p1}, Lnwj;->hashCode()I

    move-result p1

    add-int/2addr v2, p1

    :cond_4
    return v2

    :pswitch_data_0
    .packed-switch 0x0
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
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
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

.method public final c(Ljava/lang/Object;[BIIILnvj;)I
    .locals 30

    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move-object/from16 v12, p2

    move/from16 v13, p4

    move/from16 v11, p5

    move-object/from16 v9, p6

    invoke-static/range {p1 .. p1}, Lnyb;->J(Ljava/lang/Object;)V

    sget-object v10, Lnyb;->b:Lsun/misc/Unsafe;

    const/16 v16, 0x0

    const/4 v8, -0x1

    move/from16 v0, p3

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const v6, 0xfffff

    :goto_0
    const/16 v17, 0x0

    if-ge v0, v13, :cond_2a

    add-int/lit8 v3, v0, 0x1

    aget-byte v0, v12, v0

    if-gez v0, :cond_0

    invoke-static {v0, v12, v3, v9}, Lkwp;->ap(I[BILnvj;)I

    move-result v0

    iget v3, v9, Lnvj;->a:I

    move v4, v3

    move v3, v0

    goto :goto_1

    :cond_0
    move v4, v0

    :goto_1
    ushr-int/lit8 v0, v4, 0x3

    const/4 v7, 0x3

    if-le v0, v1, :cond_1

    div-int/2addr v2, v7

    invoke-direct {v15, v0, v2}, Lnyb;->v(II)I

    move-result v1

    move v2, v1

    goto :goto_2

    :cond_1
    invoke-direct {v15, v0}, Lnyb;->u(I)I

    move-result v1

    move v2, v1

    :goto_2
    const-wide/16 v19, 0x0

    if-ne v2, v8, :cond_2

    move/from16 p3, v0

    move v15, v3

    move/from16 v22, v4

    move/from16 v27, v5

    move/from16 v28, v6

    move-object/from16 v29, v10

    const/16 v18, -0x1

    const/16 v21, 0x0

    :goto_3
    const/16 v23, 0x1

    goto/16 :goto_c

    :cond_2
    and-int/lit8 v8, v4, 0x7

    iget-object v7, v15, Lnyb;->c:[I

    add-int/lit8 v22, v2, 0x1

    aget v1, v7, v22

    invoke-static {v1}, Lnyb;->y(I)I

    move-result v11

    move/from16 v24, v3

    move/from16 v22, v4

    invoke-static {v1}, Lnyb;->A(I)J

    move-result-wide v3

    move/from16 v25, v0

    const/16 v0, 0x11

    if-gt v11, v0, :cond_17

    add-int/lit8 v0, v2, 0x2

    aget v0, v7, v0

    ushr-int/lit8 v7, v0, 0x14

    const/16 v23, 0x1

    shl-int v7, v23, v7

    const v13, 0xfffff

    and-int/2addr v0, v13

    if-eq v0, v6, :cond_4

    if-eq v6, v13, :cond_3

    move/from16 v26, v1

    move/from16 v18, v2

    int-to-long v1, v6

    invoke-virtual {v10, v14, v1, v2, v5}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_4

    :cond_3
    move/from16 v26, v1

    move/from16 v18, v2

    :goto_4
    int-to-long v1, v0

    invoke-virtual {v10, v14, v1, v2}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v5

    move/from16 v28, v0

    move/from16 v27, v5

    goto :goto_5

    :cond_4
    move/from16 v26, v1

    move/from16 v18, v2

    move/from16 v27, v5

    move/from16 v28, v6

    :goto_5
    const/4 v0, 0x5

    packed-switch v11, :pswitch_data_0

    move/from16 v6, v18

    move/from16 v13, v22

    move/from16 v5, v24

    move/from16 v11, v25

    const/4 v1, 0x1

    const/4 v0, 0x3

    if-ne v8, v0, :cond_16

    invoke-direct {v15, v14, v6}, Lnyb;->F(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v8

    shl-int/lit8 v0, v11, 0x3

    or-int/lit8 v17, v0, 0x4

    invoke-direct {v15, v6}, Lnyb;->D(I)Lnyo;

    move-result-object v1

    move-object v0, v8

    move-object/from16 v2, p2

    move v3, v5

    move/from16 v4, p4

    move/from16 v5, v17

    move v12, v6

    move-object/from16 v6, p6

    invoke-static/range {v0 .. v6}, Lkwp;->as(Ljava/lang/Object;Lnyo;[BIIILnvj;)I

    move-result v0

    invoke-direct {v15, v14, v12, v8}, Lnyb;->P(Ljava/lang/Object;ILjava/lang/Object;)V

    or-int v5, v27, v7

    move v1, v11

    move v2, v12

    move v3, v13

    move/from16 v6, v28

    const/4 v8, -0x1

    move-object/from16 v12, p2

    move/from16 v13, p4

    move/from16 v11, p5

    goto/16 :goto_0

    :pswitch_0
    if-nez v8, :cond_5

    move/from16 v5, v24

    invoke-static {v12, v5, v9}, Lkwp;->ar([BILnvj;)I

    move-result v6

    iget-wide v0, v9, Lnvj;->b:J

    invoke-static {v0, v1}, Lnvy;->H(J)J

    move-result-wide v19

    move/from16 v11, v25

    move-object v0, v10

    move-object/from16 v1, p1

    move/from16 v8, v18

    move-wide v2, v3

    move/from16 v13, v22

    move-wide/from16 v4, v19

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    or-int v5, v27, v7

    move v0, v6

    move v2, v8

    move v1, v11

    move v3, v13

    move/from16 v6, v28

    const/4 v8, -0x1

    move/from16 v13, p4

    move/from16 v11, p5

    goto/16 :goto_0

    :cond_5
    move/from16 v8, v18

    move/from16 v13, v22

    move/from16 v5, v24

    move/from16 v11, v25

    move v12, v8

    const/4 v1, 0x1

    goto/16 :goto_9

    :pswitch_1
    move/from16 v6, v18

    move/from16 v13, v22

    move/from16 v5, v24

    move/from16 v11, v25

    if-nez v8, :cond_6

    invoke-static {v12, v5, v9}, Lkwp;->ao([BILnvj;)I

    move-result v0

    iget v1, v9, Lnvj;->a:I

    invoke-static {v1}, Lnvy;->F(I)I

    move-result v1

    invoke-virtual {v10, v14, v3, v4, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    or-int v5, v27, v7

    move v2, v6

    move v1, v11

    move v3, v13

    move/from16 v6, v28

    const/4 v8, -0x1

    move/from16 v13, p4

    move/from16 v11, p5

    goto/16 :goto_0

    :cond_6
    move v12, v6

    const/4 v1, 0x1

    goto/16 :goto_9

    :pswitch_2
    move/from16 v6, v18

    move/from16 v13, v22

    move/from16 v5, v24

    move/from16 v11, v25

    if-nez v8, :cond_9

    invoke-static {v12, v5, v9}, Lkwp;->ao([BILnvj;)I

    move-result v0

    iget v1, v9, Lnvj;->a:I

    invoke-direct {v15, v6}, Lnyb;->C(I)Lnww;

    move-result-object v2

    if-eqz v2, :cond_8

    invoke-interface {v2, v1}, Lnww;->a(I)Z

    move-result v2

    if-eqz v2, :cond_7

    goto :goto_6

    :cond_7
    invoke-static/range {p1 .. p1}, Lnyb;->d(Ljava/lang/Object;)Lnza;

    move-result-object v2

    int-to-long v3, v1

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v2, v13, v1}, Lnza;->f(ILjava/lang/Object;)V

    move v2, v6

    move v1, v11

    move v3, v13

    move/from16 v5, v27

    move/from16 v6, v28

    const/4 v8, -0x1

    move/from16 v13, p4

    move/from16 v11, p5

    goto/16 :goto_0

    :cond_8
    :goto_6
    invoke-virtual {v10, v14, v3, v4, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    or-int v5, v27, v7

    move v2, v6

    move v1, v11

    move v3, v13

    move/from16 v6, v28

    const/4 v8, -0x1

    move/from16 v13, p4

    move/from16 v11, p5

    goto/16 :goto_0

    :cond_9
    move v12, v6

    const/4 v1, 0x1

    goto/16 :goto_9

    :pswitch_3
    move/from16 v6, v18

    move/from16 v13, v22

    move/from16 v5, v24

    move/from16 v11, v25

    const/4 v0, 0x2

    if-ne v8, v0, :cond_a

    invoke-static {v12, v5, v9}, Lkwp;->af([BILnvj;)I

    move-result v0

    iget-object v1, v9, Lnvj;->c:Ljava/lang/Object;

    invoke-virtual {v10, v14, v3, v4, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    or-int v5, v27, v7

    move v2, v6

    move v1, v11

    move v3, v13

    move/from16 v6, v28

    const/4 v8, -0x1

    move/from16 v13, p4

    move/from16 v11, p5

    goto/16 :goto_0

    :cond_a
    move v12, v6

    const/4 v1, 0x1

    goto/16 :goto_9

    :pswitch_4
    move/from16 v6, v18

    move/from16 v13, v22

    move/from16 v5, v24

    move/from16 v11, v25

    const/4 v0, 0x2

    if-ne v8, v0, :cond_b

    invoke-direct {v15, v14, v6}, Lnyb;->F(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v8

    invoke-direct {v15, v6}, Lnyb;->D(I)Lnyo;

    move-result-object v1

    move-object v0, v8

    move-object/from16 v2, p2

    move v3, v5

    move/from16 v4, p4

    move-object/from16 v5, p6

    invoke-static/range {v0 .. v5}, Lkwp;->at(Ljava/lang/Object;Lnyo;[BIILnvj;)I

    move-result v0

    invoke-direct {v15, v14, v6, v8}, Lnyb;->P(Ljava/lang/Object;ILjava/lang/Object;)V

    or-int v5, v27, v7

    move v2, v6

    move v1, v11

    move v3, v13

    move/from16 v6, v28

    const/4 v8, -0x1

    move/from16 v13, p4

    move/from16 v11, p5

    goto/16 :goto_0

    :cond_b
    move v12, v6

    const/4 v1, 0x1

    goto/16 :goto_9

    :pswitch_5
    move/from16 v6, v18

    move/from16 v13, v22

    move/from16 v5, v24

    move/from16 v11, v25

    const/4 v0, 0x2

    if-ne v8, v0, :cond_d

    const/high16 v0, 0x20000000

    and-int v0, v26, v0

    if-nez v0, :cond_c

    invoke-static {v12, v5, v9}, Lkwp;->al([BILnvj;)I

    move-result v0

    goto :goto_7

    :cond_c
    invoke-static {v12, v5, v9}, Lkwp;->am([BILnvj;)I

    move-result v0

    :goto_7
    iget-object v1, v9, Lnvj;->c:Ljava/lang/Object;

    invoke-virtual {v10, v14, v3, v4, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    or-int v5, v27, v7

    move v2, v6

    move v1, v11

    move v3, v13

    move/from16 v6, v28

    const/4 v8, -0x1

    move/from16 v13, p4

    move/from16 v11, p5

    goto/16 :goto_0

    :cond_d
    move v12, v6

    const/4 v1, 0x1

    goto/16 :goto_9

    :pswitch_6
    move/from16 v6, v18

    move/from16 v13, v22

    move/from16 v5, v24

    move/from16 v11, v25

    if-nez v8, :cond_f

    invoke-static {v12, v5, v9}, Lkwp;->ar([BILnvj;)I

    move-result v0

    iget-wide v1, v9, Lnvj;->b:J

    cmp-long v5, v1, v19

    if-eqz v5, :cond_e

    const/4 v1, 0x1

    goto :goto_8

    :cond_e
    const/4 v1, 0x0

    :goto_8
    invoke-static {v14, v3, v4, v1}, Lnzi;->m(Ljava/lang/Object;JZ)V

    or-int v5, v27, v7

    move v2, v6

    move v1, v11

    move v3, v13

    move/from16 v6, v28

    const/4 v8, -0x1

    move/from16 v13, p4

    move/from16 v11, p5

    goto/16 :goto_0

    :cond_f
    move v12, v6

    const/4 v1, 0x1

    goto/16 :goto_9

    :pswitch_7
    move/from16 v6, v18

    move/from16 v13, v22

    move/from16 v5, v24

    move/from16 v11, v25

    if-ne v8, v0, :cond_10

    invoke-static {v12, v5}, Lkwp;->ag([BI)I

    move-result v0

    invoke-virtual {v10, v14, v3, v4, v0}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    add-int/lit8 v0, v5, 0x4

    or-int v5, v27, v7

    move v2, v6

    move v1, v11

    move v3, v13

    move/from16 v6, v28

    const/4 v8, -0x1

    move/from16 v13, p4

    move/from16 v11, p5

    goto/16 :goto_0

    :cond_10
    move v12, v6

    const/4 v1, 0x1

    goto/16 :goto_9

    :pswitch_8
    move/from16 v6, v18

    move/from16 v13, v22

    move/from16 v5, v24

    move/from16 v11, v25

    const/4 v0, 0x1

    if-ne v8, v0, :cond_11

    invoke-static {v12, v5}, Lkwp;->av([BI)J

    move-result-wide v19

    move-object v0, v10

    move-object/from16 v1, p1

    move v8, v5

    move-wide v2, v3

    move-wide/from16 v4, v19

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    add-int/lit8 v0, v8, 0x8

    or-int v5, v27, v7

    move v2, v6

    move v1, v11

    move v3, v13

    move/from16 v6, v28

    const/4 v8, -0x1

    move/from16 v13, p4

    move/from16 v11, p5

    goto/16 :goto_0

    :cond_11
    move v8, v5

    move v12, v6

    const/4 v1, 0x1

    goto/16 :goto_9

    :pswitch_9
    move/from16 v6, v18

    move/from16 v13, v22

    move/from16 v5, v24

    move/from16 v11, v25

    if-nez v8, :cond_12

    invoke-static {v12, v5, v9}, Lkwp;->ao([BILnvj;)I

    move-result v0

    iget v1, v9, Lnvj;->a:I

    invoke-virtual {v10, v14, v3, v4, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    or-int v5, v27, v7

    move v2, v6

    move v1, v11

    move v3, v13

    move/from16 v6, v28

    const/4 v8, -0x1

    move/from16 v13, p4

    move/from16 v11, p5

    goto/16 :goto_0

    :cond_12
    move v12, v6

    const/4 v1, 0x1

    goto/16 :goto_9

    :pswitch_a
    move/from16 v6, v18

    move/from16 v13, v22

    move/from16 v5, v24

    move/from16 v11, v25

    if-nez v8, :cond_13

    invoke-static {v12, v5, v9}, Lkwp;->ar([BILnvj;)I

    move-result v8

    iget-wide v1, v9, Lnvj;->b:J

    move-object v0, v10

    move-wide/from16 v19, v1

    move-object/from16 v1, p1

    move-wide v2, v3

    move-wide/from16 v4, v19

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    or-int v5, v27, v7

    move v2, v6

    move v0, v8

    move v1, v11

    move v3, v13

    move/from16 v6, v28

    const/4 v8, -0x1

    move/from16 v13, p4

    move/from16 v11, p5

    goto/16 :goto_0

    :cond_13
    move v12, v6

    const/4 v1, 0x1

    goto :goto_9

    :pswitch_b
    move/from16 v6, v18

    move/from16 v13, v22

    move/from16 v5, v24

    move/from16 v11, v25

    if-ne v8, v0, :cond_14

    invoke-static {v12, v5}, Lkwp;->ae([BI)F

    move-result v0

    invoke-static {v14, v3, v4, v0}, Lnzi;->r(Ljava/lang/Object;JF)V

    add-int/lit8 v0, v5, 0x4

    or-int v5, v27, v7

    move v2, v6

    move v1, v11

    move v3, v13

    move/from16 v6, v28

    const/4 v8, -0x1

    move/from16 v13, p4

    move/from16 v11, p5

    goto/16 :goto_0

    :cond_14
    move v12, v6

    const/4 v1, 0x1

    goto :goto_9

    :pswitch_c
    move/from16 v6, v18

    move/from16 v13, v22

    move/from16 v5, v24

    move/from16 v11, v25

    const/4 v1, 0x1

    if-ne v8, v1, :cond_15

    invoke-static {v12, v5}, Lkwp;->ad([BI)D

    move-result-wide v0

    invoke-static {v14, v3, v4, v0, v1}, Lnzi;->q(Ljava/lang/Object;JD)V

    add-int/lit8 v0, v5, 0x8

    or-int v5, v27, v7

    move v2, v6

    move v1, v11

    move v3, v13

    move/from16 v6, v28

    const/4 v8, -0x1

    move/from16 v13, p4

    move/from16 v11, p5

    goto/16 :goto_0

    :cond_15
    move v12, v6

    goto :goto_9

    :cond_16
    move v12, v6

    :goto_9
    move v15, v5

    move-object/from16 v29, v10

    move/from16 p3, v11

    move/from16 v21, v12

    move/from16 v22, v13

    const/16 v18, -0x1

    goto/16 :goto_3

    :cond_17
    move/from16 v26, v1

    move v12, v2

    move/from16 v13, v22

    move/from16 v2, v24

    move/from16 v7, v25

    const/4 v1, 0x1

    const/16 v0, 0x1b

    if-ne v11, v0, :cond_1b

    const/4 v0, 0x2

    if-ne v8, v0, :cond_1a

    invoke-virtual {v10, v14, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnxa;

    invoke-interface {v0}, Lnxa;->c()Z

    move-result v1

    if-nez v1, :cond_19

    invoke-interface {v0}, Lnxa;->size()I

    move-result v1

    if-nez v1, :cond_18

    const/16 v1, 0xa

    goto :goto_a

    :cond_18
    add-int/2addr v1, v1

    :goto_a
    invoke-interface {v0, v1}, Lnxa;->e(I)Lnxa;

    move-result-object v0

    invoke-virtual {v10, v14, v3, v4, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    move-object v8, v0

    goto :goto_b

    :cond_19
    move-object v8, v0

    :goto_b
    invoke-direct {v15, v12}, Lnyb;->D(I)Lnyo;

    move-result-object v0

    move v1, v13

    move v3, v2

    move-object/from16 v2, p2

    move/from16 v4, p4

    move/from16 v27, v5

    move-object v5, v8

    move/from16 v28, v6

    move-object/from16 v6, p6

    invoke-static/range {v0 .. v6}, Lkwp;->aj(Lnyo;I[BIILnxa;Lnvj;)I

    move-result v0

    move/from16 v11, p5

    move v1, v7

    move v2, v12

    move v3, v13

    move/from16 v5, v27

    move/from16 v6, v28

    const/4 v8, -0x1

    move-object/from16 v12, p2

    move/from16 v13, p4

    goto/16 :goto_0

    :cond_1a
    move v3, v2

    move/from16 v27, v5

    move/from16 v28, v6

    move v15, v3

    move/from16 p3, v7

    move-object/from16 v29, v10

    move/from16 v21, v12

    move/from16 v22, v13

    const/16 v18, -0x1

    const/16 v23, 0x1

    goto/16 :goto_c

    :cond_1b
    move/from16 v27, v5

    move/from16 v28, v6

    move v6, v2

    const/16 v0, 0x31

    if-gt v11, v0, :cond_1d

    move-object/from16 v22, v10

    move/from16 v2, v26

    int-to-long v9, v2

    move-object/from16 v0, p0

    const/16 v23, 0x1

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-wide/from16 v24, v3

    move v3, v6

    move/from16 v4, p4

    move v5, v13

    move v15, v6

    move v6, v7

    move/from16 p3, v7

    move v7, v8

    const/16 v18, -0x1

    move v8, v12

    move-object/from16 v29, v22

    move/from16 v21, v12

    move/from16 v22, v13

    move-wide/from16 v12, v24

    move-object/from16 v14, p6

    invoke-direct/range {v0 .. v14}, Lnyb;->t(Ljava/lang/Object;[BIIIIIIJIJLnvj;)I

    move-result v0

    if-eq v0, v15, :cond_1c

    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move-object/from16 v12, p2

    move/from16 v1, p3

    move/from16 v13, p4

    move/from16 v11, p5

    move-object/from16 v9, p6

    move/from16 v2, v21

    move/from16 v3, v22

    move/from16 v5, v27

    move/from16 v6, v28

    move-object/from16 v10, v29

    const/4 v8, -0x1

    goto/16 :goto_0

    :cond_1c
    move v15, v0

    goto/16 :goto_c

    :cond_1d
    move-wide/from16 v24, v3

    move v15, v6

    move/from16 p3, v7

    move-object/from16 v29, v10

    move/from16 v21, v12

    move/from16 v22, v13

    move/from16 v2, v26

    const/16 v18, -0x1

    const/16 v23, 0x1

    const/16 v0, 0x32

    if-ne v11, v0, :cond_1f

    const/4 v0, 0x2

    if-ne v8, v0, :cond_21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move v3, v15

    move/from16 v4, p4

    move/from16 v5, v21

    move-wide/from16 v6, v24

    move-object/from16 v8, p6

    invoke-direct/range {v0 .. v8}, Lnyb;->r(Ljava/lang/Object;[BIIIJLnvj;)I

    move-result v0

    if-eq v0, v15, :cond_1e

    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move-object/from16 v12, p2

    move/from16 v1, p3

    move/from16 v13, p4

    move/from16 v11, p5

    move-object/from16 v9, p6

    move/from16 v2, v21

    move/from16 v3, v22

    move/from16 v5, v27

    move/from16 v6, v28

    move-object/from16 v10, v29

    const/4 v8, -0x1

    goto/16 :goto_0

    :cond_1e
    move v15, v0

    goto :goto_c

    :cond_1f
    move-object/from16 v0, p0

    move v9, v2

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move v3, v15

    move/from16 v4, p4

    move/from16 v5, v22

    move/from16 v6, p3

    move v7, v8

    move v8, v9

    move v9, v11

    move-wide/from16 v10, v24

    move/from16 v12, v21

    move-object/from16 v13, p6

    invoke-direct/range {v0 .. v13}, Lnyb;->s(Ljava/lang/Object;[BIIIIIIIJILnvj;)I

    move-result v0

    if-eq v0, v15, :cond_20

    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move-object/from16 v12, p2

    move/from16 v1, p3

    move/from16 v13, p4

    move/from16 v11, p5

    move-object/from16 v9, p6

    move/from16 v2, v21

    move/from16 v3, v22

    move/from16 v5, v27

    move/from16 v6, v28

    move-object/from16 v10, v29

    const/4 v8, -0x1

    goto/16 :goto_0

    :cond_20
    move v15, v0

    :cond_21
    :goto_c
    move/from16 v7, p5

    move/from16 v8, v22

    if-ne v8, v7, :cond_22

    if-eqz v7, :cond_22

    move-object/from16 v9, p0

    move-object/from16 v12, p1

    move v3, v8

    move v0, v15

    move/from16 v5, v27

    move/from16 v6, v28

    goto/16 :goto_13

    :cond_22
    move-object/from16 v9, p0

    iget-boolean v0, v9, Lnyb;->h:Z

    if-eqz v0, :cond_29

    move-object/from16 v10, p6

    iget-object v0, v10, Lnvj;->d:Lnwh;

    sget-object v1, Lnwh;->a:Lnwh;

    if-eq v0, v1, :cond_28

    iget-object v1, v9, Lnyb;->g:Lnxy;

    move/from16 v11, p3

    invoke-virtual {v0, v1, v11}, Lnwh;->c(Lnxy;I)Llhj;

    move-result-object v0

    if-nez v0, :cond_23

    invoke-static/range {p1 .. p1}, Lnyb;->d(Ljava/lang/Object;)Lnza;

    move-result-object v4

    move v0, v8

    move-object/from16 v1, p2

    move v2, v15

    move/from16 v3, p4

    move-object/from16 v5, p6

    invoke-static/range {v0 .. v5}, Lkwp;->an(I[BIILnza;Lnvj;)I

    move-result v0

    move-object/from16 v12, p1

    move-object/from16 v13, p2

    goto/16 :goto_12

    :cond_23
    move-object/from16 v12, p1

    move-object v1, v12

    check-cast v1, Lnwq;

    invoke-virtual {v1}, Lnwq;->c()Lnwj;

    iget-object v1, v1, Lnwq;->l:Lnwj;

    invoke-virtual {v0}, Llhj;->a()Lnzl;

    move-result-object v2

    sget-object v3, Lnzl;->n:Lnzl;

    if-eq v2, v3, :cond_27

    invoke-virtual {v0}, Llhj;->a()Lnzl;

    move-result-object v2

    invoke-virtual {v2}, Lnzl;->ordinal()I

    move-result v2

    packed-switch v2, :pswitch_data_1

    move-object/from16 v13, p2

    move-object/from16 v2, v17

    goto/16 :goto_10

    :pswitch_d
    move-object/from16 v13, p2

    invoke-static {v13, v15, v10}, Lkwp;->ar([BILnvj;)I

    move-result v15

    iget-wide v2, v10, Lnvj;->b:J

    invoke-static {v2, v3}, Lnvy;->H(J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    move-object/from16 v2, v17

    goto/16 :goto_10

    :pswitch_e
    move-object/from16 v13, p2

    invoke-static {v13, v15, v10}, Lkwp;->ao([BILnvj;)I

    move-result v15

    iget v2, v10, Lnvj;->a:I

    invoke-static {v2}, Lnvy;->F(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v2, v17

    goto/16 :goto_10

    :pswitch_f
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Shouldn\'t reach here."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_10
    move-object/from16 v13, p2

    invoke-static {v13, v15, v10}, Lkwp;->af([BILnvj;)I

    move-result v15

    iget-object v2, v10, Lnvj;->c:Ljava/lang/Object;

    goto/16 :goto_10

    :pswitch_11
    move-object/from16 v13, p2

    sget-object v2, Lnyh;->a:Lnyh;

    iget-object v3, v0, Llhj;->c:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Lnyh;->a(Ljava/lang/Class;)Lnyo;

    move-result-object v2

    iget-object v3, v0, Llhj;->b:Ljava/lang/Object;

    check-cast v3, Lnwr;

    invoke-virtual {v1, v3}, Lnwj;->k(Lnwr;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_24

    invoke-interface {v2}, Lnyo;->e()Ljava/lang/Object;

    move-result-object v3

    iget-object v0, v0, Llhj;->b:Ljava/lang/Object;

    check-cast v0, Lnwr;

    invoke-virtual {v1, v0, v3}, Lnwj;->l(Lnwr;Ljava/lang/Object;)V

    move-object v0, v3

    goto :goto_d

    :cond_24
    move-object v0, v3

    :goto_d
    move-object v1, v2

    move-object/from16 v2, p2

    move v3, v15

    move/from16 v4, p4

    move-object/from16 v5, p6

    invoke-static/range {v0 .. v5}, Lkwp;->at(Ljava/lang/Object;Lnyo;[BIILnvj;)I

    move-result v0

    goto/16 :goto_12

    :pswitch_12
    move-object/from16 v13, p2

    shl-int/lit8 v2, v11, 0x3

    or-int/lit8 v5, v2, 0x4

    sget-object v2, Lnyh;->a:Lnyh;

    iget-object v3, v0, Llhj;->c:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Lnyh;->a(Ljava/lang/Class;)Lnyo;

    move-result-object v2

    iget-object v3, v0, Llhj;->b:Ljava/lang/Object;

    check-cast v3, Lnwr;

    invoke-virtual {v1, v3}, Lnwj;->k(Lnwr;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_25

    invoke-interface {v2}, Lnyo;->e()Ljava/lang/Object;

    move-result-object v3

    iget-object v0, v0, Llhj;->b:Ljava/lang/Object;

    check-cast v0, Lnwr;

    invoke-virtual {v1, v0, v3}, Lnwj;->l(Lnwr;Ljava/lang/Object;)V

    move-object v0, v3

    goto :goto_e

    :cond_25
    move-object v0, v3

    :goto_e
    move-object v1, v2

    move-object/from16 v2, p2

    move v3, v15

    move/from16 v4, p4

    move-object/from16 v6, p6

    invoke-static/range {v0 .. v6}, Lkwp;->as(Ljava/lang/Object;Lnyo;[BIIILnvj;)I

    move-result v0

    goto/16 :goto_12

    :pswitch_13
    move-object/from16 v13, p2

    invoke-static {v13, v15, v10}, Lkwp;->al([BILnvj;)I

    move-result v15

    iget-object v2, v10, Lnvj;->c:Ljava/lang/Object;

    goto/16 :goto_10

    :pswitch_14
    move-object/from16 v13, p2

    invoke-static {v13, v15, v10}, Lkwp;->ar([BILnvj;)I

    move-result v15

    iget-wide v2, v10, Lnvj;->b:J

    cmp-long v4, v2, v19

    if-eqz v4, :cond_26

    goto :goto_f

    :cond_26
    const/16 v23, 0x0

    :goto_f
    invoke-static/range {v23 .. v23}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v17

    move-object/from16 v2, v17

    goto :goto_10

    :pswitch_15
    move-object/from16 v13, p2

    invoke-static {v13, v15}, Lkwp;->ag([BI)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    add-int/lit8 v15, v15, 0x4

    move-object/from16 v2, v17

    goto :goto_10

    :pswitch_16
    move-object/from16 v13, p2

    invoke-static {v13, v15}, Lkwp;->av([BI)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    add-int/lit8 v15, v15, 0x8

    move-object/from16 v2, v17

    goto :goto_10

    :pswitch_17
    move-object/from16 v13, p2

    invoke-static {v13, v15, v10}, Lkwp;->ao([BILnvj;)I

    move-result v15

    iget v2, v10, Lnvj;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v2, v17

    goto :goto_10

    :pswitch_18
    move-object/from16 v13, p2

    invoke-static {v13, v15, v10}, Lkwp;->ar([BILnvj;)I

    move-result v15

    iget-wide v2, v10, Lnvj;->b:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    move-object/from16 v2, v17

    goto :goto_10

    :pswitch_19
    move-object/from16 v13, p2

    invoke-static {v13, v15}, Lkwp;->ae([BI)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v17

    add-int/lit8 v15, v15, 0x4

    move-object/from16 v2, v17

    goto :goto_10

    :pswitch_1a
    move-object/from16 v13, p2

    invoke-static {v13, v15}, Lkwp;->ad([BI)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v17

    add-int/lit8 v15, v15, 0x8

    move-object/from16 v2, v17

    :goto_10
    iget-object v0, v0, Llhj;->b:Ljava/lang/Object;

    check-cast v0, Lnwr;

    invoke-virtual {v1, v0, v2}, Lnwj;->l(Lnwr;Ljava/lang/Object;)V

    move v0, v15

    goto :goto_12

    :cond_27
    move-object/from16 v13, p2

    invoke-static {v13, v15, v10}, Lkwp;->ao([BILnvj;)I

    throw v17

    :cond_28
    move-object/from16 v12, p1

    move-object/from16 v13, p2

    move/from16 v11, p3

    goto :goto_11

    :cond_29
    move-object/from16 v12, p1

    move-object/from16 v13, p2

    move/from16 v11, p3

    move-object/from16 v10, p6

    :goto_11
    invoke-static/range {p1 .. p1}, Lnyb;->d(Ljava/lang/Object;)Lnza;

    move-result-object v4

    move v0, v8

    move-object/from16 v1, p2

    move v2, v15

    move/from16 v3, p4

    move-object/from16 v5, p6

    invoke-static/range {v0 .. v5}, Lkwp;->an(I[BIILnza;Lnvj;)I

    move-result v0

    :goto_12
    move v3, v8

    move-object v15, v9

    move-object v9, v10

    move v1, v11

    move-object v14, v12

    move-object v12, v13

    move/from16 v2, v21

    move/from16 v5, v27

    move/from16 v6, v28

    move-object/from16 v10, v29

    const/4 v8, -0x1

    move/from16 v13, p4

    move v11, v7

    goto/16 :goto_0

    :cond_2a
    move/from16 v27, v5

    move/from16 v28, v6

    move-object/from16 v29, v10

    move v7, v11

    move-object v12, v14

    move-object v9, v15

    :goto_13
    const v1, 0xfffff

    if-eq v6, v1, :cond_2b

    int-to-long v1, v6

    move-object/from16 v4, v29

    invoke-virtual {v4, v12, v1, v2, v5}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_2b
    iget v1, v9, Lnyb;->l:I

    move-object/from16 v2, v17

    :goto_14
    iget v4, v9, Lnyb;->m:I

    if-ge v1, v4, :cond_2c

    iget-object v4, v9, Lnyb;->k:[I

    aget v4, v4, v1

    invoke-direct {v9, v12, v4, v2, v12}, Lnyb;->ab(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    :cond_2c
    if-eqz v2, :cond_2d

    check-cast v2, Lnza;

    invoke-static {v12, v2}, Lkwp;->O(Ljava/lang/Object;Lnza;)V

    :cond_2d
    if-nez v7, :cond_2f

    move/from16 v1, p4

    if-ne v0, v1, :cond_2e

    goto :goto_15

    :cond_2e
    invoke-static {}, Lnxd;->g()Lnxd;

    move-result-object v0

    throw v0

    :cond_2f
    move/from16 v1, p4

    if-gt v0, v1, :cond_30

    if-ne v3, v7, :cond_30

    :goto_15
    return v0

    :cond_30
    invoke-static {}, Lnxd;->g()Lnxd;

    move-result-object v0

    goto :goto_17

    :goto_16
    throw v0

    :goto_17
    goto :goto_16

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_9
        :pswitch_2
        :pswitch_7
        :pswitch_8
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_17
        :pswitch_f
        :pswitch_15
        :pswitch_16
        :pswitch_e
        :pswitch_d
    .end packed-switch
.end method

.method public final e()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lnyb;->g:Lnxy;

    check-cast v0, Lnws;

    invoke-virtual {v0}, Lnws;->P()Lnws;

    move-result-object v0

    return-object v0
.end method

.method public final f(Ljava/lang/Object;)V
    .locals 7

    invoke-static {p1}, Lnyb;->W(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    instance-of v0, p1, Lnws;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lnws;

    iget v2, v0, Lnws;->aI:I

    const/high16 v3, -0x80000000

    and-int/2addr v2, v3

    const v3, 0x7fffffff

    or-int/2addr v2, v3

    iput v2, v0, Lnws;->aI:I

    iput v1, v0, Lnws;->aG:I

    invoke-virtual {v0}, Lnws;->Z()V

    :cond_1
    iget-object v0, p0, Lnyb;->c:[I

    array-length v0, v0

    :goto_0
    if-ge v1, v0, :cond_3

    invoke-direct {p0, v1}, Lnyb;->z(I)I

    move-result v2

    invoke-static {v2}, Lnyb;->A(I)J

    move-result-wide v3

    invoke-static {v2}, Lnyb;->y(I)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    goto :goto_1

    :pswitch_1
    sget-object v2, Lnyb;->b:Lsun/misc/Unsafe;

    invoke-virtual {v2, p1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_2

    move-object v6, v5

    check-cast v6, Lnxt;

    invoke-virtual {v6}, Lnxt;->c()V

    invoke-virtual {v2, p1, v3, v4, v5}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_1

    :pswitch_2
    iget-object v2, p0, Lnyb;->n:Lnxo;

    invoke-virtual {v2, p1, v3, v4}, Lnxo;->c(Ljava/lang/Object;J)V

    goto :goto_1

    :pswitch_3
    invoke-direct {p0, p1, v1}, Lnyb;->T(Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-direct {p0, v1}, Lnyb;->D(I)Lnyo;

    move-result-object v2

    sget-object v5, Lnyb;->b:Lsun/misc/Unsafe;

    invoke-virtual {v5, p1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Lnyo;->f(Ljava/lang/Object;)V

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x3

    goto :goto_0

    :cond_3
    invoke-static {p1}, Lkwp;->Q(Ljava/lang/Object;)V

    iget-boolean v0, p0, Lnyb;->h:Z

    if-eqz v0, :cond_4

    invoke-static {p1}, Lkwp;->ab(Ljava/lang/Object;)V

    :cond_4
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public final g(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 6

    invoke-static {p1}, Lnyb;->J(Ljava/lang/Object;)V

    if-eqz p2, :cond_3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lnyb;->c:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    invoke-direct {p0, v0}, Lnyb;->z(I)I

    move-result v1

    invoke-static {v1}, Lnyb;->A(I)J

    move-result-wide v2

    invoke-direct {p0, v0}, Lnyb;->p(I)I

    move-result v4

    invoke-static {v1}, Lnyb;->y(I)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_1

    :pswitch_0
    invoke-direct {p0, p1, p2, v0}, Lnyb;->L(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/16 :goto_1

    :pswitch_1
    invoke-direct {p0, p2, v4, v0}, Lnyb;->X(Ljava/lang/Object;II)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p2, v2, v3}, Lnzi;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v2, v3, v1}, Lnzi;->u(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-direct {p0, p1, v4, v0}, Lnyb;->O(Ljava/lang/Object;II)V

    goto/16 :goto_1

    :pswitch_2
    invoke-direct {p0, p1, p2, v0}, Lnyb;->L(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/16 :goto_1

    :pswitch_3
    invoke-direct {p0, p2, v4, v0}, Lnyb;->X(Ljava/lang/Object;II)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p2, v2, v3}, Lnzi;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v2, v3, v1}, Lnzi;->u(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-direct {p0, p1, v4, v0}, Lnyb;->O(Ljava/lang/Object;II)V

    goto/16 :goto_1

    :pswitch_4
    sget-object v1, Lnyp;->a:Ljava/lang/Class;

    invoke-static {p1, v2, v3}, Lnzi;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p2, v2, v3}, Lnzi;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v1, v4}, Lkwp;->V(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v2, v3, v1}, Lnzi;->u(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_5
    iget-object v1, p0, Lnyb;->n:Lnxo;

    invoke-virtual {v1, p1, p2, v2, v3}, Lnxo;->d(Ljava/lang/Object;Ljava/lang/Object;J)V

    goto/16 :goto_1

    :pswitch_6
    invoke-direct {p0, p1, p2, v0}, Lnyb;->K(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/16 :goto_1

    :pswitch_7
    invoke-direct {p0, p2, v0}, Lnyb;->T(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p2, v2, v3}, Lnzi;->f(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p1, v2, v3, v4, v5}, Lnzi;->t(Ljava/lang/Object;JJ)V

    invoke-direct {p0, p1, v0}, Lnyb;->N(Ljava/lang/Object;I)V

    goto/16 :goto_1

    :pswitch_8
    invoke-direct {p0, p2, v0}, Lnyb;->T(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p2, v2, v3}, Lnzi;->d(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {p1, v2, v3, v1}, Lnzi;->s(Ljava/lang/Object;JI)V

    invoke-direct {p0, p1, v0}, Lnyb;->N(Ljava/lang/Object;I)V

    goto/16 :goto_1

    :pswitch_9
    invoke-direct {p0, p2, v0}, Lnyb;->T(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p2, v2, v3}, Lnzi;->f(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p1, v2, v3, v4, v5}, Lnzi;->t(Ljava/lang/Object;JJ)V

    invoke-direct {p0, p1, v0}, Lnyb;->N(Ljava/lang/Object;I)V

    goto/16 :goto_1

    :pswitch_a
    invoke-direct {p0, p2, v0}, Lnyb;->T(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p2, v2, v3}, Lnzi;->d(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {p1, v2, v3, v1}, Lnzi;->s(Ljava/lang/Object;JI)V

    invoke-direct {p0, p1, v0}, Lnyb;->N(Ljava/lang/Object;I)V

    goto/16 :goto_1

    :pswitch_b
    invoke-direct {p0, p2, v0}, Lnyb;->T(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p2, v2, v3}, Lnzi;->d(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {p1, v2, v3, v1}, Lnzi;->s(Ljava/lang/Object;JI)V

    invoke-direct {p0, p1, v0}, Lnyb;->N(Ljava/lang/Object;I)V

    goto/16 :goto_1

    :pswitch_c
    invoke-direct {p0, p2, v0}, Lnyb;->T(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p2, v2, v3}, Lnzi;->d(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {p1, v2, v3, v1}, Lnzi;->s(Ljava/lang/Object;JI)V

    invoke-direct {p0, p1, v0}, Lnyb;->N(Ljava/lang/Object;I)V

    goto/16 :goto_1

    :pswitch_d
    invoke-direct {p0, p2, v0}, Lnyb;->T(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p2, v2, v3}, Lnzi;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v2, v3, v1}, Lnzi;->u(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-direct {p0, p1, v0}, Lnyb;->N(Ljava/lang/Object;I)V

    goto/16 :goto_1

    :pswitch_e
    invoke-direct {p0, p1, p2, v0}, Lnyb;->K(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/16 :goto_1

    :pswitch_f
    invoke-direct {p0, p2, v0}, Lnyb;->T(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p2, v2, v3}, Lnzi;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v2, v3, v1}, Lnzi;->u(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-direct {p0, p1, v0}, Lnyb;->N(Ljava/lang/Object;I)V

    goto/16 :goto_1

    :pswitch_10
    invoke-direct {p0, p2, v0}, Lnyb;->T(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p2, v2, v3}, Lnzi;->w(Ljava/lang/Object;J)Z

    move-result v1

    invoke-static {p1, v2, v3, v1}, Lnzi;->m(Ljava/lang/Object;JZ)V

    invoke-direct {p0, p1, v0}, Lnyb;->N(Ljava/lang/Object;I)V

    goto/16 :goto_1

    :pswitch_11
    invoke-direct {p0, p2, v0}, Lnyb;->T(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p2, v2, v3}, Lnzi;->d(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {p1, v2, v3, v1}, Lnzi;->s(Ljava/lang/Object;JI)V

    invoke-direct {p0, p1, v0}, Lnyb;->N(Ljava/lang/Object;I)V

    goto :goto_1

    :pswitch_12
    invoke-direct {p0, p2, v0}, Lnyb;->T(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p2, v2, v3}, Lnzi;->f(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p1, v2, v3, v4, v5}, Lnzi;->t(Ljava/lang/Object;JJ)V

    invoke-direct {p0, p1, v0}, Lnyb;->N(Ljava/lang/Object;I)V

    goto :goto_1

    :pswitch_13
    invoke-direct {p0, p2, v0}, Lnyb;->T(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p2, v2, v3}, Lnzi;->d(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {p1, v2, v3, v1}, Lnzi;->s(Ljava/lang/Object;JI)V

    invoke-direct {p0, p1, v0}, Lnyb;->N(Ljava/lang/Object;I)V

    goto :goto_1

    :pswitch_14
    invoke-direct {p0, p2, v0}, Lnyb;->T(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p2, v2, v3}, Lnzi;->f(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p1, v2, v3, v4, v5}, Lnzi;->t(Ljava/lang/Object;JJ)V

    invoke-direct {p0, p1, v0}, Lnyb;->N(Ljava/lang/Object;I)V

    goto :goto_1

    :pswitch_15
    invoke-direct {p0, p2, v0}, Lnyb;->T(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p2, v2, v3}, Lnzi;->f(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p1, v2, v3, v4, v5}, Lnzi;->t(Ljava/lang/Object;JJ)V

    invoke-direct {p0, p1, v0}, Lnyb;->N(Ljava/lang/Object;I)V

    goto :goto_1

    :pswitch_16
    invoke-direct {p0, p2, v0}, Lnyb;->T(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p2, v2, v3}, Lnzi;->c(Ljava/lang/Object;J)F

    move-result v1

    invoke-static {p1, v2, v3, v1}, Lnzi;->r(Ljava/lang/Object;JF)V

    invoke-direct {p0, p1, v0}, Lnyb;->N(Ljava/lang/Object;I)V

    goto :goto_1

    :pswitch_17
    invoke-direct {p0, p2, v0}, Lnyb;->T(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p2, v2, v3}, Lnzi;->b(Ljava/lang/Object;J)D

    move-result-wide v4

    invoke-static {p1, v2, v3, v4, v5}, Lnzi;->q(Ljava/lang/Object;JD)V

    invoke-direct {p0, p1, v0}, Lnyb;->N(Ljava/lang/Object;I)V

    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x3

    goto/16 :goto_0

    :cond_1
    invoke-static {p1, p2}, Lnyp;->B(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-boolean v0, p0, Lnyb;->h:Z

    if-eqz v0, :cond_2

    invoke-static {p1, p2}, Lnyp;->A(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :cond_2
    return-void

    :cond_3
    const/4 p1, 0x0

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x0
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
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final h(Ljava/lang/Object;Lnyk;Lnwh;)V
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    const/4 v11, 0x0

    if-eqz v10, :cond_2a

    invoke-static/range {p1 .. p1}, Lnyb;->J(Ljava/lang/Object;)V

    iget-object v12, v1, Lnyb;->o:Lkwp;

    move-object v13, v11

    move-object v14, v13

    :cond_0
    :goto_0
    :try_start_0
    invoke-interface/range {p2 .. p2}, Lnyk;->c()I

    move-result v3

    invoke-direct {v1, v3}, Lnyb;->u(I)I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    const/4 v4, 0x3

    const v5, 0x7fffffff

    if-gez v2, :cond_e

    if-ne v3, v5, :cond_2

    iget v2, v1, Lnyb;->l:I

    :goto_1
    iget v3, v1, Lnyb;->m:I

    if-ge v2, v3, :cond_1

    iget-object v3, v1, Lnyb;->k:[I

    aget v3, v3, v2

    invoke-direct {v1, v8, v3, v13, v8}, Lnyb;->ab(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    if-eqz v13, :cond_26

    :goto_2
    check-cast v13, Lnza;

    invoke-static {v8, v13}, Lkwp;->O(Ljava/lang/Object;Lnza;)V

    return-void

    :cond_2
    :try_start_1
    iget-boolean v2, v1, Lnyb;->h:Z

    if-nez v2, :cond_3

    move-object v2, v11

    goto :goto_3

    :cond_3
    iget-object v2, v1, Lnyb;->g:Lnxy;

    invoke-virtual {v10, v2, v3}, Lnwh;->c(Lnxy;I)Llhj;

    move-result-object v2

    :goto_3
    if-eqz v2, :cond_b

    if-nez v14, :cond_4

    invoke-static/range {p1 .. p1}, Lkwp;->Z(Ljava/lang/Object;)Lnwj;

    move-result-object v14

    :cond_4
    invoke-virtual {v2}, Llhj;->a()Lnzl;

    move-result-object v3

    sget-object v5, Lnzl;->n:Lnzl;

    if-eq v3, v5, :cond_a

    invoke-virtual {v2}, Llhj;->a()Lnzl;

    move-result-object v3

    invoke-virtual {v3}, Lnzl;->ordinal()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    goto/16 :goto_6

    :pswitch_0
    invoke-interface/range {p2 .. p2}, Lnyk;->m()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    goto/16 :goto_7

    :pswitch_1
    invoke-interface/range {p2 .. p2}, Lnyk;->h()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto/16 :goto_7

    :pswitch_2
    invoke-interface/range {p2 .. p2}, Lnyk;->l()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    goto/16 :goto_7

    :pswitch_3
    invoke-interface/range {p2 .. p2}, Lnyk;->g()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto/16 :goto_7

    :pswitch_4
    const-string v2, "Shouldn\'t reach here."

    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    :pswitch_5
    invoke-interface/range {p2 .. p2}, Lnyk;->i()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto/16 :goto_7

    :pswitch_6
    invoke-interface/range {p2 .. p2}, Lnyk;->o()Lnvt;

    move-result-object v3

    goto/16 :goto_7

    :pswitch_7
    iget-object v3, v2, Llhj;->b:Ljava/lang/Object;

    check-cast v3, Lnwr;

    invoke-virtual {v14, v3}, Lnwj;->k(Lnwr;)Ljava/lang/Object;

    move-result-object v3

    instance-of v4, v3, Lnws;

    if-eqz v4, :cond_6

    sget-object v4, Lnyh;->a:Lnyh;

    invoke-virtual {v4, v3}, Lnyh;->b(Ljava/lang/Object;)Lnyo;

    move-result-object v4

    move-object v5, v3

    check-cast v5, Lnws;

    invoke-virtual {v5}, Lnws;->ac()Z

    move-result v5

    if-nez v5, :cond_5

    invoke-interface {v4}, Lnyo;->e()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v5, v3}, Lnyo;->g(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v2, v2, Llhj;->b:Ljava/lang/Object;

    check-cast v2, Lnwr;

    invoke-virtual {v14, v2, v5}, Lnwj;->l(Lnwr;Ljava/lang/Object;)V

    move-object v3, v5

    goto :goto_4

    :cond_5
    :goto_4
    invoke-interface {v9, v3, v4, v10}, Lnyk;->x(Ljava/lang/Object;Lnyo;Lnwh;)V

    goto/16 :goto_0

    :cond_6
    iget-object v3, v2, Llhj;->c:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-interface {v9, v3, v10}, Lnyk;->t(Ljava/lang/Class;Lnwh;)Ljava/lang/Object;

    move-result-object v3

    goto/16 :goto_7

    :pswitch_8
    iget-object v3, v2, Llhj;->b:Ljava/lang/Object;

    check-cast v3, Lnwr;

    invoke-virtual {v14, v3}, Lnwj;->k(Lnwr;)Ljava/lang/Object;

    move-result-object v3

    instance-of v5, v3, Lnws;

    if-eqz v5, :cond_8

    sget-object v4, Lnyh;->a:Lnyh;

    invoke-virtual {v4, v3}, Lnyh;->b(Ljava/lang/Object;)Lnyo;

    move-result-object v4

    move-object v5, v3

    check-cast v5, Lnws;

    invoke-virtual {v5}, Lnws;->ac()Z

    move-result v5

    if-nez v5, :cond_7

    invoke-interface {v4}, Lnyo;->e()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v5, v3}, Lnyo;->g(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v2, v2, Llhj;->b:Ljava/lang/Object;

    check-cast v2, Lnwr;

    invoke-virtual {v14, v2, v5}, Lnwj;->l(Lnwr;Ljava/lang/Object;)V

    move-object v3, v5

    goto :goto_5

    :cond_7
    :goto_5
    invoke-interface {v9, v3, v4, v10}, Lnyk;->w(Ljava/lang/Object;Lnyo;Lnwh;)V

    goto/16 :goto_0

    :cond_8
    iget-object v3, v2, Llhj;->c:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    move-object v5, v9

    check-cast v5, Lnvz;

    invoke-virtual {v5, v4}, Lnvz;->N(I)V

    sget-object v4, Lnyh;->a:Lnyh;

    invoke-virtual {v4, v3}, Lnyh;->a(Ljava/lang/Class;)Lnyo;

    move-result-object v3

    move-object v4, v9

    check-cast v4, Lnvz;

    invoke-virtual {v4, v3, v10}, Lnvz;->r(Lnyo;Lnwh;)Ljava/lang/Object;

    move-result-object v3

    goto :goto_7

    :pswitch_9
    invoke-interface/range {p2 .. p2}, Lnyk;->u()Ljava/lang/String;

    move-result-object v3

    goto :goto_7

    :pswitch_a
    invoke-interface/range {p2 .. p2}, Lnyk;->O()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    goto :goto_7

    :pswitch_b
    invoke-interface/range {p2 .. p2}, Lnyk;->e()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_7

    :pswitch_c
    invoke-interface/range {p2 .. p2}, Lnyk;->j()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    goto :goto_7

    :pswitch_d
    invoke-interface/range {p2 .. p2}, Lnyk;->f()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_7

    :pswitch_e
    invoke-interface/range {p2 .. p2}, Lnyk;->n()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    goto :goto_7

    :pswitch_f
    invoke-interface/range {p2 .. p2}, Lnyk;->k()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    goto :goto_7

    :pswitch_10
    invoke-interface/range {p2 .. p2}, Lnyk;->b()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    goto :goto_7

    :pswitch_11
    invoke-interface/range {p2 .. p2}, Lnyk;->a()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    goto :goto_7

    :goto_6
    move-object v3, v11

    :goto_7
    invoke-virtual {v2}, Llhj;->a()Lnzl;

    move-result-object v4

    invoke-virtual {v4}, Lnzl;->ordinal()I

    move-result v4

    packed-switch v4, :pswitch_data_1

    goto :goto_8

    :pswitch_12
    iget-object v4, v2, Llhj;->b:Ljava/lang/Object;

    check-cast v4, Lnwr;

    invoke-virtual {v14, v4}, Lnwj;->k(Lnwr;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_9

    sget-object v5, Lnxb;->a:Ljava/nio/charset/Charset;

    check-cast v4, Lnxy;

    invoke-interface {v4}, Lnxy;->ct()Lnxx;

    move-result-object v4

    check-cast v3, Lnxy;

    invoke-interface {v4, v3}, Lnxx;->c(Lnxy;)Lnxx;

    move-result-object v3

    invoke-interface {v3}, Lnxx;->m()Lnxy;

    move-result-object v3

    :cond_9
    :goto_8
    iget-object v2, v2, Llhj;->b:Ljava/lang/Object;

    check-cast v2, Lnwr;

    invoke-virtual {v14, v2, v3}, Lnwj;->l(Lnwr;Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_a
    invoke-interface/range {p2 .. p2}, Lnyk;->f()I

    throw v11

    :cond_b
    if-nez v13, :cond_c

    invoke-static/range {p1 .. p1}, Lkwp;->P(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    :cond_c
    :try_start_2
    invoke-virtual {v12, v13, v9}, Lkwp;->K(Ljava/lang/Object;Lnyk;)Z

    move-result v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v2, :cond_0

    iget v2, v1, Lnyb;->l:I

    :goto_9
    iget v3, v1, Lnyb;->m:I

    if-ge v2, v3, :cond_d

    iget-object v3, v1, Lnyb;->k:[I

    aget v3, v3, v2

    invoke-direct {v1, v8, v3, v13, v8}, Lnyb;->ab(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_d
    if-eqz v13, :cond_26

    goto/16 :goto_2

    :catchall_0
    move-exception v0

    move-object v2, v0

    goto/16 :goto_1a

    :cond_e
    :try_start_3
    invoke-direct {v1, v2}, Lnyb;->z(I)I

    move-result v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_5

    :try_start_4
    invoke-static {v6}, Lnyb;->y(I)I

    move-result v7
    :try_end_4
    .catch Lnxc; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    const/4 v15, 0x2

    packed-switch v7, :pswitch_data_2

    move-object/from16 v16, v14

    if-nez v13, :cond_21

    :try_start_5
    invoke-static/range {p1 .. p1}, Lkwp;->P(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13
    :try_end_5
    .catch Lnxc; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    goto/16 :goto_16

    :pswitch_13
    :try_start_6
    invoke-direct {v1, v8, v3, v2}, Lnyb;->G(Ljava/lang/Object;II)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lnxy;

    invoke-direct {v1, v2}, Lnyb;->D(I)Lnyo;

    move-result-object v5

    invoke-interface {v9, v4, v5, v10}, Lnyk;->w(Ljava/lang/Object;Lnyo;Lnwh;)V

    invoke-direct {v1, v8, v3, v2, v4}, Lnyb;->Q(Ljava/lang/Object;IILjava/lang/Object;)V

    move-object/from16 v16, v14

    goto/16 :goto_15

    :pswitch_14
    invoke-static {v6}, Lnyb;->A(I)J

    move-result-wide v4

    invoke-interface/range {p2 .. p2}, Lnyk;->m()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-static {v8, v4, v5, v6}, Lnzi;->u(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-direct {v1, v8, v3, v2}, Lnyb;->O(Ljava/lang/Object;II)V

    move-object/from16 v16, v14

    goto/16 :goto_15

    :pswitch_15
    invoke-static {v6}, Lnyb;->A(I)J

    move-result-wide v4

    invoke-interface/range {p2 .. p2}, Lnyk;->h()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v8, v4, v5, v6}, Lnzi;->u(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-direct {v1, v8, v3, v2}, Lnyb;->O(Ljava/lang/Object;II)V

    move-object/from16 v16, v14

    goto/16 :goto_15

    :pswitch_16
    invoke-static {v6}, Lnyb;->A(I)J

    move-result-wide v4

    invoke-interface/range {p2 .. p2}, Lnyk;->l()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-static {v8, v4, v5, v6}, Lnzi;->u(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-direct {v1, v8, v3, v2}, Lnyb;->O(Ljava/lang/Object;II)V

    move-object/from16 v16, v14

    goto/16 :goto_15

    :pswitch_17
    invoke-static {v6}, Lnyb;->A(I)J

    move-result-wide v4

    invoke-interface/range {p2 .. p2}, Lnyk;->g()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v8, v4, v5, v6}, Lnzi;->u(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-direct {v1, v8, v3, v2}, Lnyb;->O(Ljava/lang/Object;II)V

    move-object/from16 v16, v14

    goto/16 :goto_15

    :pswitch_18
    invoke-interface/range {p2 .. p2}, Lnyk;->d()I

    move-result v4

    invoke-direct {v1, v2}, Lnyb;->C(I)Lnww;

    move-result-object v5

    if-eqz v5, :cond_10

    invoke-interface {v5, v4}, Lnww;->a(I)Z

    move-result v5

    if-eqz v5, :cond_f

    goto :goto_a

    :cond_f
    invoke-static {v8, v3, v4, v13}, Lnyp;->C(Ljava/lang/Object;IILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    goto/16 :goto_0

    :cond_10
    :goto_a
    invoke-static {v6}, Lnyb;->A(I)J

    move-result-wide v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v8, v5, v6, v4}, Lnzi;->u(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-direct {v1, v8, v3, v2}, Lnyb;->O(Ljava/lang/Object;II)V

    move-object/from16 v16, v14

    goto/16 :goto_15

    :pswitch_19
    invoke-static {v6}, Lnyb;->A(I)J

    move-result-wide v4

    invoke-interface/range {p2 .. p2}, Lnyk;->i()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v8, v4, v5, v6}, Lnzi;->u(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-direct {v1, v8, v3, v2}, Lnyb;->O(Ljava/lang/Object;II)V

    move-object/from16 v16, v14

    goto/16 :goto_15

    :pswitch_1a
    invoke-static {v6}, Lnyb;->A(I)J

    move-result-wide v4

    invoke-interface/range {p2 .. p2}, Lnyk;->o()Lnvt;

    move-result-object v6

    invoke-static {v8, v4, v5, v6}, Lnzi;->u(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-direct {v1, v8, v3, v2}, Lnyb;->O(Ljava/lang/Object;II)V

    move-object/from16 v16, v14

    goto/16 :goto_15

    :pswitch_1b
    invoke-direct {v1, v8, v3, v2}, Lnyb;->G(Ljava/lang/Object;II)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lnxy;

    invoke-direct {v1, v2}, Lnyb;->D(I)Lnyo;

    move-result-object v5

    invoke-interface {v9, v4, v5, v10}, Lnyk;->x(Ljava/lang/Object;Lnyo;Lnwh;)V

    invoke-direct {v1, v8, v3, v2, v4}, Lnyb;->Q(Ljava/lang/Object;IILjava/lang/Object;)V

    move-object/from16 v16, v14

    goto/16 :goto_15

    :pswitch_1c
    invoke-direct {v1, v8, v6, v9}, Lnyb;->M(Ljava/lang/Object;ILnyk;)V

    invoke-direct {v1, v8, v3, v2}, Lnyb;->O(Ljava/lang/Object;II)V

    move-object/from16 v16, v14

    goto/16 :goto_15

    :pswitch_1d
    invoke-static {v6}, Lnyb;->A(I)J

    move-result-wide v4

    invoke-interface/range {p2 .. p2}, Lnyk;->O()Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-static {v8, v4, v5, v6}, Lnzi;->u(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-direct {v1, v8, v3, v2}, Lnyb;->O(Ljava/lang/Object;II)V

    move-object/from16 v16, v14

    goto/16 :goto_15

    :pswitch_1e
    invoke-static {v6}, Lnyb;->A(I)J

    move-result-wide v4

    invoke-interface/range {p2 .. p2}, Lnyk;->e()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v8, v4, v5, v6}, Lnzi;->u(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-direct {v1, v8, v3, v2}, Lnyb;->O(Ljava/lang/Object;II)V

    move-object/from16 v16, v14

    goto/16 :goto_15

    :pswitch_1f
    invoke-static {v6}, Lnyb;->A(I)J

    move-result-wide v4

    invoke-interface/range {p2 .. p2}, Lnyk;->j()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-static {v8, v4, v5, v6}, Lnzi;->u(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-direct {v1, v8, v3, v2}, Lnyb;->O(Ljava/lang/Object;II)V

    move-object/from16 v16, v14

    goto/16 :goto_15

    :pswitch_20
    invoke-static {v6}, Lnyb;->A(I)J

    move-result-wide v4

    invoke-interface/range {p2 .. p2}, Lnyk;->f()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v8, v4, v5, v6}, Lnzi;->u(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-direct {v1, v8, v3, v2}, Lnyb;->O(Ljava/lang/Object;II)V

    move-object/from16 v16, v14

    goto/16 :goto_15

    :pswitch_21
    invoke-static {v6}, Lnyb;->A(I)J

    move-result-wide v4

    invoke-interface/range {p2 .. p2}, Lnyk;->n()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-static {v8, v4, v5, v6}, Lnzi;->u(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-direct {v1, v8, v3, v2}, Lnyb;->O(Ljava/lang/Object;II)V

    move-object/from16 v16, v14

    goto/16 :goto_15

    :pswitch_22
    invoke-static {v6}, Lnyb;->A(I)J

    move-result-wide v4

    invoke-interface/range {p2 .. p2}, Lnyk;->k()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-static {v8, v4, v5, v6}, Lnzi;->u(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-direct {v1, v8, v3, v2}, Lnyb;->O(Ljava/lang/Object;II)V

    move-object/from16 v16, v14

    goto/16 :goto_15

    :pswitch_23
    invoke-static {v6}, Lnyb;->A(I)J

    move-result-wide v4

    invoke-interface/range {p2 .. p2}, Lnyk;->b()F

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-static {v8, v4, v5, v6}, Lnzi;->u(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-direct {v1, v8, v3, v2}, Lnyb;->O(Ljava/lang/Object;II)V

    move-object/from16 v16, v14

    goto/16 :goto_15

    :pswitch_24
    invoke-static {v6}, Lnyb;->A(I)J

    move-result-wide v4

    invoke-interface/range {p2 .. p2}, Lnyk;->a()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    invoke-static {v8, v4, v5, v6}, Lnzi;->u(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-direct {v1, v8, v3, v2}, Lnyb;->O(Ljava/lang/Object;II)V

    move-object/from16 v16, v14

    goto/16 :goto_15

    :pswitch_25
    invoke-direct {v1, v2}, Lnyb;->E(I)Ljava/lang/Object;

    move-result-object v3

    invoke-direct {v1, v2}, Lnyb;->z(I)I

    move-result v2

    invoke-static {v2}, Lnyb;->A(I)J

    move-result-wide v6

    invoke-static {v8, v6, v7}, Lnzi;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_11

    invoke-static {}, Lkwp;->W()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v8, v6, v7, v2}, Lnzi;->u(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_b

    :cond_11
    invoke-static {v2}, Lkwp;->U(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_12

    invoke-static {}, Lkwp;->W()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4, v2}, Lkwp;->V(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v8, v6, v7, v4}, Lnzi;->u(Ljava/lang/Object;JLjava/lang/Object;)V

    move-object v2, v4

    :cond_12
    :goto_b
    check-cast v2, Lnxt;

    invoke-static {v3}, Lkwp;->az(Ljava/lang/Object;)Llhj;

    move-result-object v3

    move-object v4, v9

    check-cast v4, Lnvz;

    invoke-virtual {v4, v15}, Lnvz;->N(I)V

    move-object v4, v9

    check-cast v4, Lnvz;

    iget-object v4, v4, Lnvz;->a:Lnvy;

    invoke-virtual {v4}, Lnvy;->n()I

    move-result v4

    move-object v6, v9

    check-cast v6, Lnvz;

    iget-object v6, v6, Lnvz;->a:Lnvy;

    invoke-virtual {v6, v4}, Lnvy;->e(I)I

    move-result v4

    iget-object v6, v3, Llhj;->c:Ljava/lang/Object;

    iget-object v7, v3, Llhj;->d:Ljava/lang/Object;
    :try_end_6
    .catch Lnxc; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    :goto_c
    :try_start_7
    move-object v15, v9

    check-cast v15, Lnvz;

    invoke-virtual {v15}, Lnvz;->c()I

    move-result v15

    if-eq v15, v5, :cond_16

    move-object v5, v9

    check-cast v5, Lnvz;

    iget-object v5, v5, Lnvz;->a:Lnvy;

    invoke-virtual {v5}, Lnvy;->C()Z

    move-result v5
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    if-eqz v5, :cond_13

    move-object/from16 v16, v14

    goto :goto_12

    :cond_13
    const-string v5, "Unable to parse map entry."

    packed-switch v15, :pswitch_data_3

    move-object/from16 v16, v14

    :try_start_8
    move-object v11, v9

    check-cast v11, Lnvz;
    :try_end_8
    .catch Lnxc; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_e

    :pswitch_26
    :try_start_9
    iget-object v15, v3, Llhj;->a:Ljava/lang/Object;

    iget-object v11, v3, Llhj;->d:Ljava/lang/Object;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    check-cast v15, Lnzl;
    :try_end_9
    .catch Lnxc; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    move-object/from16 v16, v14

    :try_start_a
    move-object v14, v9

    check-cast v14, Lnvz;

    invoke-virtual {v14, v15, v11, v10}, Lnvz;->q(Lnzl;Ljava/lang/Class;Lnwh;)Ljava/lang/Object;

    move-result-object v7

    goto :goto_d

    :catch_0
    move-exception v0

    move-object/from16 v16, v14

    goto :goto_10

    :pswitch_27
    move-object/from16 v16, v14

    iget-object v11, v3, Llhj;->b:Ljava/lang/Object;

    check-cast v11, Lnzl;

    move-object v14, v9

    check-cast v14, Lnvz;

    const/4 v15, 0x0

    invoke-virtual {v14, v11, v15, v15}, Lnvz;->q(Lnzl;Ljava/lang/Class;Lnwh;)Ljava/lang/Object;

    move-result-object v6

    :goto_d
    move-object/from16 v14, v16

    const v5, 0x7fffffff

    const/4 v11, 0x0

    goto :goto_c

    :catch_1
    move-exception v0

    goto :goto_10

    :goto_e
    invoke-virtual {v11}, Lnvz;->P()Z

    move-result v11

    if-eqz v11, :cond_14

    :goto_f
    goto :goto_11

    :cond_14
    new-instance v11, Lnxd;

    invoke-direct {v11, v5}, Lnxd;-><init>(Ljava/lang/String;)V

    throw v11
    :try_end_a
    .catch Lnxc; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    :goto_10
    :try_start_b
    move-object v11, v9

    check-cast v11, Lnvz;

    invoke-virtual {v11}, Lnvz;->P()Z

    move-result v11

    if-eqz v11, :cond_15

    goto :goto_f

    :goto_11
    move-object/from16 v14, v16

    const v5, 0x7fffffff

    const/4 v11, 0x0

    goto :goto_c

    :cond_15
    new-instance v2, Lnxd;

    invoke-direct {v2, v5}, Lnxd;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_16
    move-object/from16 v16, v14

    :goto_12
    invoke-interface {v2, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    :try_start_c
    move-object v2, v9

    check-cast v2, Lnvz;

    iget-object v2, v2, Lnvz;->a:Lnvy;

    invoke-virtual {v2, v4}, Lnvy;->A(I)V

    goto/16 :goto_15

    :catchall_1
    move-exception v0

    goto :goto_13

    :catchall_2
    move-exception v0

    move-object/from16 v16, v14

    :goto_13
    move-object v2, v0

    move-object v3, v9

    check-cast v3, Lnvz;

    iget-object v3, v3, Lnvz;->a:Lnvy;

    invoke-virtual {v3, v4}, Lnvy;->A(I)V

    throw v2

    :pswitch_28
    move-object/from16 v16, v14

    invoke-static {v6}, Lnyb;->A(I)J

    move-result-wide v5

    invoke-direct {v1, v2}, Lnyb;->D(I)Lnyo;

    move-result-object v2

    iget-object v3, v1, Lnyb;->n:Lnxo;

    invoke-virtual {v3, v8, v5, v6}, Lnxo;->b(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v3

    move-object v5, v9

    check-cast v5, Lnvz;

    iget v5, v5, Lnvz;->b:I

    invoke-static {v5}, Lnzn;->b(I)I

    move-result v6

    if-ne v6, v4, :cond_18

    :cond_17
    move-object v4, v9

    check-cast v4, Lnvz;

    invoke-virtual {v4, v2, v10}, Lnvz;->r(Lnyo;Lnwh;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v4, v9

    check-cast v4, Lnvz;

    iget-object v4, v4, Lnvz;->a:Lnvy;

    invoke-virtual {v4}, Lnvy;->C()Z

    move-result v4

    if-nez v4, :cond_20

    move-object v4, v9

    check-cast v4, Lnvz;

    iget v4, v4, Lnvz;->c:I

    if-nez v4, :cond_20

    move-object v4, v9

    check-cast v4, Lnvz;

    iget-object v4, v4, Lnvz;->a:Lnvy;

    invoke-virtual {v4}, Lnvy;->m()I

    move-result v4

    if-eq v4, v5, :cond_17

    move-object v2, v9

    check-cast v2, Lnvz;

    iput v4, v2, Lnvz;->c:I

    goto/16 :goto_15

    :cond_18
    invoke-static {}, Lnxd;->a()Lnxc;

    move-result-object v2

    throw v2

    :pswitch_29
    move-object/from16 v16, v14

    iget-object v2, v1, Lnyb;->n:Lnxo;

    invoke-static {v6}, Lnyb;->A(I)J

    move-result-wide v3

    invoke-virtual {v2, v8, v3, v4}, Lnxo;->b(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v2

    invoke-interface {v9, v2}, Lnyk;->J(Ljava/util/List;)V

    goto/16 :goto_15

    :pswitch_2a
    move-object/from16 v16, v14

    iget-object v2, v1, Lnyb;->n:Lnxo;

    invoke-static {v6}, Lnyb;->A(I)J

    move-result-wide v3

    invoke-virtual {v2, v8, v3, v4}, Lnxo;->b(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v2

    invoke-interface {v9, v2}, Lnyk;->I(Ljava/util/List;)V

    goto/16 :goto_15

    :pswitch_2b
    move-object/from16 v16, v14

    iget-object v2, v1, Lnyb;->n:Lnxo;

    invoke-static {v6}, Lnyb;->A(I)J

    move-result-wide v3

    invoke-virtual {v2, v8, v3, v4}, Lnxo;->b(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v2

    invoke-interface {v9, v2}, Lnyk;->H(Ljava/util/List;)V

    goto/16 :goto_15

    :pswitch_2c
    move-object/from16 v16, v14

    iget-object v2, v1, Lnyb;->n:Lnxo;

    invoke-static {v6}, Lnyb;->A(I)J

    move-result-wide v3

    invoke-virtual {v2, v8, v3, v4}, Lnxo;->b(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v2

    invoke-interface {v9, v2}, Lnyk;->G(Ljava/util/List;)V

    goto/16 :goto_15

    :pswitch_2d
    move-object/from16 v16, v14

    iget-object v4, v1, Lnyb;->n:Lnxo;

    invoke-static {v6}, Lnyb;->A(I)J

    move-result-wide v5

    invoke-virtual {v4, v8, v5, v6}, Lnxo;->b(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    invoke-interface {v9, v4}, Lnyk;->A(Ljava/util/List;)V

    invoke-direct {v1, v2}, Lnyb;->C(I)Lnww;

    move-result-object v5

    move-object/from16 v2, p1

    move-object v6, v13

    move-object v7, v12

    invoke-static/range {v2 .. v7}, Lnyp;->V(Ljava/lang/Object;ILjava/util/List;Lnww;Ljava/lang/Object;Lkwp;)Ljava/lang/Object;

    move-result-object v13

    move-object/from16 v14, v16

    const/4 v11, 0x0

    goto/16 :goto_0

    :pswitch_2e
    move-object/from16 v16, v14

    iget-object v2, v1, Lnyb;->n:Lnxo;

    invoke-static {v6}, Lnyb;->A(I)J

    move-result-wide v3

    invoke-virtual {v2, v8, v3, v4}, Lnxo;->b(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v2

    invoke-interface {v9, v2}, Lnyk;->L(Ljava/util/List;)V

    goto/16 :goto_15

    :pswitch_2f
    move-object/from16 v16, v14

    iget-object v2, v1, Lnyb;->n:Lnxo;

    invoke-static {v6}, Lnyb;->A(I)J

    move-result-wide v3

    invoke-virtual {v2, v8, v3, v4}, Lnxo;->b(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v2

    invoke-interface {v9, v2}, Lnyk;->y(Ljava/util/List;)V

    goto/16 :goto_15

    :pswitch_30
    move-object/from16 v16, v14

    iget-object v2, v1, Lnyb;->n:Lnxo;

    invoke-static {v6}, Lnyb;->A(I)J

    move-result-wide v3

    invoke-virtual {v2, v8, v3, v4}, Lnxo;->b(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v2

    invoke-interface {v9, v2}, Lnyk;->B(Ljava/util/List;)V

    goto/16 :goto_15

    :pswitch_31
    move-object/from16 v16, v14

    iget-object v2, v1, Lnyb;->n:Lnxo;

    invoke-static {v6}, Lnyb;->A(I)J

    move-result-wide v3

    invoke-virtual {v2, v8, v3, v4}, Lnxo;->b(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v2

    invoke-interface {v9, v2}, Lnyk;->C(Ljava/util/List;)V

    goto/16 :goto_15

    :pswitch_32
    move-object/from16 v16, v14

    iget-object v2, v1, Lnyb;->n:Lnxo;

    invoke-static {v6}, Lnyb;->A(I)J

    move-result-wide v3

    invoke-virtual {v2, v8, v3, v4}, Lnxo;->b(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v2

    invoke-interface {v9, v2}, Lnyk;->E(Ljava/util/List;)V

    goto/16 :goto_15

    :pswitch_33
    move-object/from16 v16, v14

    iget-object v2, v1, Lnyb;->n:Lnxo;

    invoke-static {v6}, Lnyb;->A(I)J

    move-result-wide v3

    invoke-virtual {v2, v8, v3, v4}, Lnxo;->b(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v2

    invoke-interface {v9, v2}, Lnyk;->M(Ljava/util/List;)V

    goto/16 :goto_15

    :pswitch_34
    move-object/from16 v16, v14

    iget-object v2, v1, Lnyb;->n:Lnxo;

    invoke-static {v6}, Lnyb;->A(I)J

    move-result-wide v3

    invoke-virtual {v2, v8, v3, v4}, Lnxo;->b(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v2

    invoke-interface {v9, v2}, Lnyk;->F(Ljava/util/List;)V

    goto/16 :goto_15

    :pswitch_35
    move-object/from16 v16, v14

    iget-object v2, v1, Lnyb;->n:Lnxo;

    invoke-static {v6}, Lnyb;->A(I)J

    move-result-wide v3

    invoke-virtual {v2, v8, v3, v4}, Lnxo;->b(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v2

    invoke-interface {v9, v2}, Lnyk;->D(Ljava/util/List;)V

    goto/16 :goto_15

    :pswitch_36
    move-object/from16 v16, v14

    iget-object v2, v1, Lnyb;->n:Lnxo;

    invoke-static {v6}, Lnyb;->A(I)J

    move-result-wide v3

    invoke-virtual {v2, v8, v3, v4}, Lnxo;->b(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v2

    invoke-interface {v9, v2}, Lnyk;->z(Ljava/util/List;)V

    goto/16 :goto_15

    :pswitch_37
    move-object/from16 v16, v14

    iget-object v2, v1, Lnyb;->n:Lnxo;

    invoke-static {v6}, Lnyb;->A(I)J

    move-result-wide v3

    invoke-virtual {v2, v8, v3, v4}, Lnxo;->b(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v2

    invoke-interface {v9, v2}, Lnyk;->J(Ljava/util/List;)V

    goto/16 :goto_15

    :pswitch_38
    move-object/from16 v16, v14

    iget-object v2, v1, Lnyb;->n:Lnxo;

    invoke-static {v6}, Lnyb;->A(I)J

    move-result-wide v3

    invoke-virtual {v2, v8, v3, v4}, Lnxo;->b(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v2

    invoke-interface {v9, v2}, Lnyk;->I(Ljava/util/List;)V

    goto/16 :goto_15

    :pswitch_39
    move-object/from16 v16, v14

    iget-object v2, v1, Lnyb;->n:Lnxo;

    invoke-static {v6}, Lnyb;->A(I)J

    move-result-wide v3

    invoke-virtual {v2, v8, v3, v4}, Lnxo;->b(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v2

    invoke-interface {v9, v2}, Lnyk;->H(Ljava/util/List;)V

    goto/16 :goto_15

    :pswitch_3a
    move-object/from16 v16, v14

    iget-object v2, v1, Lnyb;->n:Lnxo;

    invoke-static {v6}, Lnyb;->A(I)J

    move-result-wide v3

    invoke-virtual {v2, v8, v3, v4}, Lnxo;->b(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v2

    invoke-interface {v9, v2}, Lnyk;->G(Ljava/util/List;)V

    goto/16 :goto_15

    :pswitch_3b
    move-object/from16 v16, v14

    iget-object v4, v1, Lnyb;->n:Lnxo;

    invoke-static {v6}, Lnyb;->A(I)J

    move-result-wide v5

    invoke-virtual {v4, v8, v5, v6}, Lnxo;->b(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    invoke-interface {v9, v4}, Lnyk;->A(Ljava/util/List;)V

    invoke-direct {v1, v2}, Lnyb;->C(I)Lnww;

    move-result-object v5

    move-object/from16 v2, p1

    move-object v6, v13

    move-object v7, v12

    invoke-static/range {v2 .. v7}, Lnyp;->V(Ljava/lang/Object;ILjava/util/List;Lnww;Ljava/lang/Object;Lkwp;)Ljava/lang/Object;

    move-result-object v13

    move-object/from16 v14, v16

    const/4 v11, 0x0

    goto/16 :goto_0

    :pswitch_3c
    move-object/from16 v16, v14

    iget-object v2, v1, Lnyb;->n:Lnxo;

    invoke-static {v6}, Lnyb;->A(I)J

    move-result-wide v3

    invoke-virtual {v2, v8, v3, v4}, Lnxo;->b(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v2

    invoke-interface {v9, v2}, Lnyk;->L(Ljava/util/List;)V

    goto/16 :goto_15

    :pswitch_3d
    move-object/from16 v16, v14

    iget-object v2, v1, Lnyb;->n:Lnxo;

    invoke-static {v6}, Lnyb;->A(I)J

    move-result-wide v3

    invoke-virtual {v2, v8, v3, v4}, Lnxo;->b(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v2

    move-object v3, v9

    check-cast v3, Lnvz;

    iget v3, v3, Lnvz;->b:I

    invoke-static {v3}, Lnzn;->b(I)I

    move-result v3

    if-ne v3, v15, :cond_1a

    :cond_19
    move-object v3, v9

    check-cast v3, Lnvz;

    invoke-virtual {v3}, Lnvz;->o()Lnvt;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v3, v9

    check-cast v3, Lnvz;

    iget-object v3, v3, Lnvz;->a:Lnvy;

    invoke-virtual {v3}, Lnvy;->C()Z

    move-result v3

    if-nez v3, :cond_20

    move-object v3, v9

    check-cast v3, Lnvz;

    iget-object v3, v3, Lnvz;->a:Lnvy;

    invoke-virtual {v3}, Lnvy;->m()I

    move-result v3

    move-object v4, v9

    check-cast v4, Lnvz;

    iget v4, v4, Lnvz;->b:I

    if-eq v3, v4, :cond_19

    move-object v2, v9

    check-cast v2, Lnvz;

    iput v3, v2, Lnvz;->c:I

    goto/16 :goto_15

    :cond_1a
    invoke-static {}, Lnxd;->a()Lnxc;

    move-result-object v2

    throw v2

    :pswitch_3e
    move-object/from16 v16, v14

    invoke-direct {v1, v2}, Lnyb;->D(I)Lnyo;

    move-result-object v2

    invoke-static {v6}, Lnyb;->A(I)J

    move-result-wide v3

    iget-object v5, v1, Lnyb;->n:Lnxo;

    invoke-virtual {v5, v8, v3, v4}, Lnxo;->b(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v3

    move-object v4, v9

    check-cast v4, Lnvz;

    iget v4, v4, Lnvz;->b:I

    invoke-static {v4}, Lnzn;->b(I)I

    move-result v5

    if-ne v5, v15, :cond_1c

    :cond_1b
    move-object v5, v9

    check-cast v5, Lnvz;

    invoke-virtual {v5, v2, v10}, Lnvz;->s(Lnyo;Lnwh;)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v5, v9

    check-cast v5, Lnvz;

    iget-object v5, v5, Lnvz;->a:Lnvy;

    invoke-virtual {v5}, Lnvy;->C()Z

    move-result v5

    if-nez v5, :cond_20

    move-object v5, v9

    check-cast v5, Lnvz;

    iget v5, v5, Lnvz;->c:I

    if-nez v5, :cond_20

    move-object v5, v9

    check-cast v5, Lnvz;

    iget-object v5, v5, Lnvz;->a:Lnvy;

    invoke-virtual {v5}, Lnvy;->m()I

    move-result v5

    if-eq v5, v4, :cond_1b

    move-object v2, v9

    check-cast v2, Lnvz;

    iput v5, v2, Lnvz;->c:I

    goto/16 :goto_15

    :cond_1c
    invoke-static {}, Lnxd;->a()Lnxc;

    move-result-object v2

    throw v2

    :pswitch_3f
    move-object/from16 v16, v14

    invoke-static {v6}, Lnyb;->S(I)Z

    move-result v2

    if-eqz v2, :cond_1d

    iget-object v2, v1, Lnyb;->n:Lnxo;

    invoke-static {v6}, Lnyb;->A(I)J

    move-result-wide v3

    invoke-virtual {v2, v8, v3, v4}, Lnxo;->b(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v2

    move-object v3, v9

    check-cast v3, Lnvz;

    const/4 v4, 0x1

    invoke-virtual {v3, v2, v4}, Lnvz;->K(Ljava/util/List;Z)V

    goto/16 :goto_15

    :cond_1d
    iget-object v2, v1, Lnyb;->n:Lnxo;

    invoke-static {v6}, Lnyb;->A(I)J

    move-result-wide v3

    invoke-virtual {v2, v8, v3, v4}, Lnxo;->b(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v2

    move-object v3, v9

    check-cast v3, Lnvz;

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Lnvz;->K(Ljava/util/List;Z)V

    goto/16 :goto_15

    :pswitch_40
    move-object/from16 v16, v14

    iget-object v2, v1, Lnyb;->n:Lnxo;

    invoke-static {v6}, Lnyb;->A(I)J

    move-result-wide v3

    invoke-virtual {v2, v8, v3, v4}, Lnxo;->b(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v2

    invoke-interface {v9, v2}, Lnyk;->y(Ljava/util/List;)V

    goto/16 :goto_15

    :pswitch_41
    move-object/from16 v16, v14

    iget-object v2, v1, Lnyb;->n:Lnxo;

    invoke-static {v6}, Lnyb;->A(I)J

    move-result-wide v3

    invoke-virtual {v2, v8, v3, v4}, Lnxo;->b(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v2

    invoke-interface {v9, v2}, Lnyk;->B(Ljava/util/List;)V

    goto/16 :goto_15

    :pswitch_42
    move-object/from16 v16, v14

    iget-object v2, v1, Lnyb;->n:Lnxo;

    invoke-static {v6}, Lnyb;->A(I)J

    move-result-wide v3

    invoke-virtual {v2, v8, v3, v4}, Lnxo;->b(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v2

    invoke-interface {v9, v2}, Lnyk;->C(Ljava/util/List;)V

    goto/16 :goto_15

    :pswitch_43
    move-object/from16 v16, v14

    iget-object v2, v1, Lnyb;->n:Lnxo;

    invoke-static {v6}, Lnyb;->A(I)J

    move-result-wide v3

    invoke-virtual {v2, v8, v3, v4}, Lnxo;->b(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v2

    invoke-interface {v9, v2}, Lnyk;->E(Ljava/util/List;)V

    goto/16 :goto_15

    :pswitch_44
    move-object/from16 v16, v14

    iget-object v2, v1, Lnyb;->n:Lnxo;

    invoke-static {v6}, Lnyb;->A(I)J

    move-result-wide v3

    invoke-virtual {v2, v8, v3, v4}, Lnxo;->b(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v2

    invoke-interface {v9, v2}, Lnyk;->M(Ljava/util/List;)V

    goto/16 :goto_15

    :pswitch_45
    move-object/from16 v16, v14

    iget-object v2, v1, Lnyb;->n:Lnxo;

    invoke-static {v6}, Lnyb;->A(I)J

    move-result-wide v3

    invoke-virtual {v2, v8, v3, v4}, Lnxo;->b(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v2

    invoke-interface {v9, v2}, Lnyk;->F(Ljava/util/List;)V

    goto/16 :goto_15

    :pswitch_46
    move-object/from16 v16, v14

    iget-object v2, v1, Lnyb;->n:Lnxo;

    invoke-static {v6}, Lnyb;->A(I)J

    move-result-wide v3

    invoke-virtual {v2, v8, v3, v4}, Lnxo;->b(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v2

    invoke-interface {v9, v2}, Lnyk;->D(Ljava/util/List;)V

    goto/16 :goto_15

    :pswitch_47
    move-object/from16 v16, v14

    iget-object v2, v1, Lnyb;->n:Lnxo;

    invoke-static {v6}, Lnyb;->A(I)J

    move-result-wide v3

    invoke-virtual {v2, v8, v3, v4}, Lnxo;->b(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v2

    invoke-interface {v9, v2}, Lnyk;->z(Ljava/util/List;)V

    goto/16 :goto_15

    :pswitch_48
    move-object/from16 v16, v14

    invoke-direct {v1, v8, v2}, Lnyb;->F(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnxy;

    invoke-direct {v1, v2}, Lnyb;->D(I)Lnyo;

    move-result-object v4

    invoke-interface {v9, v3, v4, v10}, Lnyk;->w(Ljava/lang/Object;Lnyo;Lnwh;)V

    invoke-direct {v1, v8, v2, v3}, Lnyb;->P(Ljava/lang/Object;ILjava/lang/Object;)V

    goto/16 :goto_15

    :pswitch_49
    move-object/from16 v16, v14

    invoke-static {v6}, Lnyb;->A(I)J

    move-result-wide v3

    invoke-interface/range {p2 .. p2}, Lnyk;->m()J

    move-result-wide v5

    invoke-static {v8, v3, v4, v5, v6}, Lnzi;->t(Ljava/lang/Object;JJ)V

    invoke-direct {v1, v8, v2}, Lnyb;->N(Ljava/lang/Object;I)V

    goto/16 :goto_15

    :pswitch_4a
    move-object/from16 v16, v14

    invoke-static {v6}, Lnyb;->A(I)J

    move-result-wide v3

    invoke-interface/range {p2 .. p2}, Lnyk;->h()I

    move-result v5

    invoke-static {v8, v3, v4, v5}, Lnzi;->s(Ljava/lang/Object;JI)V

    invoke-direct {v1, v8, v2}, Lnyb;->N(Ljava/lang/Object;I)V

    goto/16 :goto_15

    :pswitch_4b
    move-object/from16 v16, v14

    invoke-static {v6}, Lnyb;->A(I)J

    move-result-wide v3

    invoke-interface/range {p2 .. p2}, Lnyk;->l()J

    move-result-wide v5

    invoke-static {v8, v3, v4, v5, v6}, Lnzi;->t(Ljava/lang/Object;JJ)V

    invoke-direct {v1, v8, v2}, Lnyb;->N(Ljava/lang/Object;I)V

    goto/16 :goto_15

    :pswitch_4c
    move-object/from16 v16, v14

    invoke-static {v6}, Lnyb;->A(I)J

    move-result-wide v3

    invoke-interface/range {p2 .. p2}, Lnyk;->g()I

    move-result v5

    invoke-static {v8, v3, v4, v5}, Lnzi;->s(Ljava/lang/Object;JI)V

    invoke-direct {v1, v8, v2}, Lnyb;->N(Ljava/lang/Object;I)V

    goto/16 :goto_15

    :pswitch_4d
    move-object/from16 v16, v14

    invoke-interface/range {p2 .. p2}, Lnyk;->d()I

    move-result v4

    invoke-direct {v1, v2}, Lnyb;->C(I)Lnww;

    move-result-object v5

    if-eqz v5, :cond_1f

    invoke-interface {v5, v4}, Lnww;->a(I)Z

    move-result v5

    if-eqz v5, :cond_1e

    goto :goto_14

    :cond_1e
    invoke-static {v8, v3, v4, v13}, Lnyp;->C(Ljava/lang/Object;IILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    move-object/from16 v14, v16

    const/4 v11, 0x0

    goto/16 :goto_0

    :cond_1f
    :goto_14
    invoke-static {v6}, Lnyb;->A(I)J

    move-result-wide v5

    invoke-static {v8, v5, v6, v4}, Lnzi;->s(Ljava/lang/Object;JI)V

    invoke-direct {v1, v8, v2}, Lnyb;->N(Ljava/lang/Object;I)V

    goto/16 :goto_15

    :pswitch_4e
    move-object/from16 v16, v14

    invoke-static {v6}, Lnyb;->A(I)J

    move-result-wide v3

    invoke-interface/range {p2 .. p2}, Lnyk;->i()I

    move-result v5

    invoke-static {v8, v3, v4, v5}, Lnzi;->s(Ljava/lang/Object;JI)V

    invoke-direct {v1, v8, v2}, Lnyb;->N(Ljava/lang/Object;I)V

    goto/16 :goto_15

    :pswitch_4f
    move-object/from16 v16, v14

    invoke-static {v6}, Lnyb;->A(I)J

    move-result-wide v3

    invoke-interface/range {p2 .. p2}, Lnyk;->o()Lnvt;

    move-result-object v5

    invoke-static {v8, v3, v4, v5}, Lnzi;->u(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-direct {v1, v8, v2}, Lnyb;->N(Ljava/lang/Object;I)V

    goto/16 :goto_15

    :pswitch_50
    move-object/from16 v16, v14

    invoke-direct {v1, v8, v2}, Lnyb;->F(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnxy;

    invoke-direct {v1, v2}, Lnyb;->D(I)Lnyo;

    move-result-object v4

    invoke-interface {v9, v3, v4, v10}, Lnyk;->x(Ljava/lang/Object;Lnyo;Lnwh;)V

    invoke-direct {v1, v8, v2, v3}, Lnyb;->P(Ljava/lang/Object;ILjava/lang/Object;)V

    goto/16 :goto_15

    :pswitch_51
    move-object/from16 v16, v14

    invoke-direct {v1, v8, v6, v9}, Lnyb;->M(Ljava/lang/Object;ILnyk;)V

    invoke-direct {v1, v8, v2}, Lnyb;->N(Ljava/lang/Object;I)V

    goto/16 :goto_15

    :pswitch_52
    move-object/from16 v16, v14

    invoke-static {v6}, Lnyb;->A(I)J

    move-result-wide v3

    invoke-interface/range {p2 .. p2}, Lnyk;->O()Z

    move-result v5

    invoke-static {v8, v3, v4, v5}, Lnzi;->m(Ljava/lang/Object;JZ)V

    invoke-direct {v1, v8, v2}, Lnyb;->N(Ljava/lang/Object;I)V

    goto/16 :goto_15

    :pswitch_53
    move-object/from16 v16, v14

    invoke-static {v6}, Lnyb;->A(I)J

    move-result-wide v3

    invoke-interface/range {p2 .. p2}, Lnyk;->e()I

    move-result v5

    invoke-static {v8, v3, v4, v5}, Lnzi;->s(Ljava/lang/Object;JI)V

    invoke-direct {v1, v8, v2}, Lnyb;->N(Ljava/lang/Object;I)V

    goto :goto_15

    :pswitch_54
    move-object/from16 v16, v14

    invoke-static {v6}, Lnyb;->A(I)J

    move-result-wide v3

    invoke-interface/range {p2 .. p2}, Lnyk;->j()J

    move-result-wide v5

    invoke-static {v8, v3, v4, v5, v6}, Lnzi;->t(Ljava/lang/Object;JJ)V

    invoke-direct {v1, v8, v2}, Lnyb;->N(Ljava/lang/Object;I)V

    goto :goto_15

    :pswitch_55
    move-object/from16 v16, v14

    invoke-static {v6}, Lnyb;->A(I)J

    move-result-wide v3

    invoke-interface/range {p2 .. p2}, Lnyk;->f()I

    move-result v5

    invoke-static {v8, v3, v4, v5}, Lnzi;->s(Ljava/lang/Object;JI)V

    invoke-direct {v1, v8, v2}, Lnyb;->N(Ljava/lang/Object;I)V

    goto :goto_15

    :pswitch_56
    move-object/from16 v16, v14

    invoke-static {v6}, Lnyb;->A(I)J

    move-result-wide v3

    invoke-interface/range {p2 .. p2}, Lnyk;->n()J

    move-result-wide v5

    invoke-static {v8, v3, v4, v5, v6}, Lnzi;->t(Ljava/lang/Object;JJ)V

    invoke-direct {v1, v8, v2}, Lnyb;->N(Ljava/lang/Object;I)V

    goto :goto_15

    :pswitch_57
    move-object/from16 v16, v14

    invoke-static {v6}, Lnyb;->A(I)J

    move-result-wide v3

    invoke-interface/range {p2 .. p2}, Lnyk;->k()J

    move-result-wide v5

    invoke-static {v8, v3, v4, v5, v6}, Lnzi;->t(Ljava/lang/Object;JJ)V

    invoke-direct {v1, v8, v2}, Lnyb;->N(Ljava/lang/Object;I)V

    goto :goto_15

    :pswitch_58
    move-object/from16 v16, v14

    invoke-static {v6}, Lnyb;->A(I)J

    move-result-wide v3

    invoke-interface/range {p2 .. p2}, Lnyk;->b()F

    move-result v5

    invoke-static {v8, v3, v4, v5}, Lnzi;->r(Ljava/lang/Object;JF)V

    invoke-direct {v1, v8, v2}, Lnyb;->N(Ljava/lang/Object;I)V

    goto :goto_15

    :pswitch_59
    move-object/from16 v16, v14

    invoke-static {v6}, Lnyb;->A(I)J

    move-result-wide v3

    invoke-interface/range {p2 .. p2}, Lnyk;->a()D

    move-result-wide v5

    invoke-static {v8, v3, v4, v5, v6}, Lnzi;->q(Ljava/lang/Object;JD)V

    invoke-direct {v1, v8, v2}, Lnyb;->N(Ljava/lang/Object;I)V
    :try_end_c
    .catch Lnxc; {:try_start_c .. :try_end_c} :catch_2
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    :cond_20
    :goto_15
    move-object/from16 v14, v16

    const/4 v11, 0x0

    goto/16 :goto_0

    :catch_2
    move-exception v0

    goto :goto_18

    :cond_21
    :goto_16
    :try_start_d
    invoke-virtual {v12, v13, v9}, Lkwp;->K(Ljava/lang/Object;Lnyk;)Z

    move-result v2
    :try_end_d
    .catch Lnxc; {:try_start_d .. :try_end_d} :catch_3
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    if-nez v2, :cond_23

    iget v2, v1, Lnyb;->l:I

    :goto_17
    iget v3, v1, Lnyb;->m:I

    if-ge v2, v3, :cond_22

    iget-object v3, v1, Lnyb;->k:[I

    aget v3, v3, v2

    invoke-direct {v1, v8, v3, v13, v8}, Lnyb;->ab(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    :cond_22
    if-eqz v13, :cond_26

    goto/16 :goto_2

    :cond_23
    move-object/from16 v14, v16

    const/4 v11, 0x0

    goto/16 :goto_0

    :catchall_3
    move-exception v0

    move-object v2, v0

    goto :goto_1a

    :catch_3
    move-exception v0

    goto :goto_18

    :catch_4
    move-exception v0

    move-object/from16 v16, v14

    :goto_18
    if-nez v13, :cond_24

    :try_start_e
    invoke-static/range {p1 .. p1}, Lkwp;->P(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v13, v2

    :cond_24
    invoke-virtual {v12, v13, v9}, Lkwp;->K(Ljava/lang/Object;Lnyk;)Z

    move-result v2
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    if-nez v2, :cond_27

    iget v2, v1, Lnyb;->l:I

    :goto_19
    iget v3, v1, Lnyb;->m:I

    if-ge v2, v3, :cond_25

    iget-object v3, v1, Lnyb;->k:[I

    aget v3, v3, v2

    invoke-direct {v1, v8, v3, v13, v8}, Lnyb;->ab(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    add-int/lit8 v2, v2, 0x1

    goto :goto_19

    :cond_25
    if-eqz v13, :cond_26

    goto/16 :goto_2

    :cond_26
    return-void

    :cond_27
    move-object/from16 v14, v16

    const/4 v11, 0x0

    goto/16 :goto_0

    :catchall_4
    move-exception v0

    move-object v2, v0

    goto :goto_1a

    :catchall_5
    move-exception v0

    move-object v2, v0

    :goto_1a
    iget v3, v1, Lnyb;->l:I

    :goto_1b
    iget v4, v1, Lnyb;->m:I

    if-ge v3, v4, :cond_28

    iget-object v4, v1, Lnyb;->k:[I

    aget v4, v4, v3

    invoke-direct {v1, v8, v4, v13, v8}, Lnyb;->ab(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    add-int/lit8 v3, v3, 0x1

    goto :goto_1b

    :cond_28
    if-eqz v13, :cond_29

    check-cast v13, Lnza;

    invoke-static {v8, v13}, Lkwp;->O(Ljava/lang/Object;Lnza;)V

    :cond_29
    throw v2

    :cond_2a
    const/4 v2, 0x0

    goto :goto_1d

    :goto_1c
    throw v2

    :goto_1d
    goto :goto_1c

    :pswitch_data_0
    .packed-switch 0x0
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

    :pswitch_data_1
    .packed-switch 0x9
        :pswitch_12
        :pswitch_12
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_59
        :pswitch_58
        :pswitch_57
        :pswitch_56
        :pswitch_55
        :pswitch_54
        :pswitch_53
        :pswitch_52
        :pswitch_51
        :pswitch_50
        :pswitch_4f
        :pswitch_4e
        :pswitch_4d
        :pswitch_4c
        :pswitch_4b
        :pswitch_4a
        :pswitch_49
        :pswitch_48
        :pswitch_47
        :pswitch_46
        :pswitch_45
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
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
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_27
        :pswitch_26
    .end packed-switch
.end method

.method public final i(Ljava/lang/Object;[BIILnvj;)V
    .locals 29

    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move-object/from16 v12, p2

    move/from16 v13, p4

    move-object/from16 v11, p5

    iget-boolean v0, v15, Lnyb;->j:Z

    if-eqz v0, :cond_18

    invoke-static/range {p1 .. p1}, Lnyb;->J(Ljava/lang/Object;)V

    sget-object v9, Lnyb;->b:Lsun/misc/Unsafe;

    const/4 v10, -0x1

    const/16 v16, 0x0

    move/from16 v0, p3

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v6, 0x0

    const v7, 0xfffff

    :goto_0
    if-ge v0, v13, :cond_15

    add-int/lit8 v3, v0, 0x1

    aget-byte v0, v12, v0

    if-gez v0, :cond_0

    invoke-static {v0, v12, v3, v11}, Lkwp;->ap(I[BILnvj;)I

    move-result v0

    iget v3, v11, Lnvj;->a:I

    move v4, v0

    move/from16 v17, v3

    goto :goto_1

    :cond_0
    move/from16 v17, v0

    move v4, v3

    :goto_1
    ushr-int/lit8 v5, v17, 0x3

    if-le v5, v1, :cond_1

    div-int/lit8 v2, v2, 0x3

    invoke-direct {v15, v5, v2}, Lnyb;->v(II)I

    move-result v0

    move v2, v0

    goto :goto_2

    :cond_1
    invoke-direct {v15, v5}, Lnyb;->u(I)I

    move-result v0

    move v2, v0

    :goto_2
    if-ne v2, v10, :cond_2

    move v2, v4

    move/from16 v18, v5

    move-object/from16 v27, v9

    const/16 v22, 0x0

    const/16 v28, -0x1

    goto/16 :goto_b

    :cond_2
    and-int/lit8 v3, v17, 0x7

    iget-object v0, v15, Lnyb;->c:[I

    add-int/lit8 v1, v2, 0x1

    aget v1, v0, v1

    invoke-static {v1}, Lnyb;->y(I)I

    move-result v8

    move/from16 p3, v4

    move/from16 v19, v5

    invoke-static {v1}, Lnyb;->A(I)J

    move-result-wide v4

    const/16 v10, 0x11

    if-gt v8, v10, :cond_a

    add-int/lit8 v10, v2, 0x2

    aget v0, v0, v10

    ushr-int/lit8 v10, v0, 0x14

    const/4 v13, 0x1

    shl-int v10, v13, v10

    const v13, 0xfffff

    and-int/2addr v0, v13

    if-eq v0, v7, :cond_5

    if-eq v7, v13, :cond_3

    move/from16 v23, v1

    move/from16 v18, v2

    int-to-long v1, v7

    invoke-virtual {v9, v14, v1, v2, v6}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_3

    :cond_3
    move/from16 v23, v1

    move/from16 v18, v2

    :goto_3
    if-eq v0, v13, :cond_4

    int-to-long v1, v0

    invoke-virtual {v9, v14, v1, v2}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v1

    move v6, v1

    :cond_4
    move v7, v0

    goto :goto_4

    :cond_5
    move/from16 v23, v1

    move/from16 v18, v2

    :goto_4
    const/4 v0, 0x5

    packed-switch v8, :pswitch_data_0

    move/from16 v8, p3

    move/from16 v13, v18

    move/from16 v18, v19

    goto/16 :goto_7

    :pswitch_0
    if-nez v3, :cond_6

    move/from16 v8, p3

    invoke-static {v12, v8, v11}, Lkwp;->ar([BILnvj;)I

    move-result v8

    iget-wide v0, v11, Lnvj;->b:J

    invoke-static {v0, v1}, Lnvy;->H(J)J

    move-result-wide v21

    move-object v0, v9

    move-object/from16 v1, p1

    move/from16 v13, v18

    move-wide v2, v4

    move/from16 v18, v19

    move-wide/from16 v4, v21

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    or-int/2addr v6, v10

    move v0, v8

    move v2, v13

    move/from16 v1, v18

    const/4 v10, -0x1

    move/from16 v13, p4

    goto/16 :goto_0

    :cond_6
    move/from16 v8, p3

    move/from16 v13, v18

    move/from16 v18, v19

    goto/16 :goto_7

    :pswitch_1
    move/from16 v8, p3

    move/from16 v13, v18

    move/from16 v18, v19

    if-nez v3, :cond_9

    invoke-static {v12, v8, v11}, Lkwp;->ao([BILnvj;)I

    move-result v0

    iget v1, v11, Lnvj;->a:I

    invoke-static {v1}, Lnvy;->F(I)I

    move-result v1

    invoke-virtual {v9, v14, v4, v5, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    or-int/2addr v6, v10

    move v2, v13

    move/from16 v1, v18

    const/4 v10, -0x1

    move/from16 v13, p4

    goto/16 :goto_0

    :pswitch_2
    move/from16 v8, p3

    move/from16 v13, v18

    move/from16 v18, v19

    if-nez v3, :cond_9

    invoke-static {v12, v8, v11}, Lkwp;->ao([BILnvj;)I

    move-result v0

    iget v1, v11, Lnvj;->a:I

    invoke-virtual {v9, v14, v4, v5, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    or-int/2addr v6, v10

    move v2, v13

    move/from16 v1, v18

    const/4 v10, -0x1

    move/from16 v13, p4

    goto/16 :goto_0

    :pswitch_3
    move/from16 v8, p3

    move/from16 v13, v18

    move/from16 v18, v19

    const/4 v0, 0x2

    if-ne v3, v0, :cond_9

    invoke-static {v12, v8, v11}, Lkwp;->af([BILnvj;)I

    move-result v0

    iget-object v1, v11, Lnvj;->c:Ljava/lang/Object;

    invoke-virtual {v9, v14, v4, v5, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    or-int/2addr v6, v10

    move v2, v13

    move/from16 v1, v18

    const/4 v10, -0x1

    move/from16 v13, p4

    goto/16 :goto_0

    :pswitch_4
    move/from16 v8, p3

    move/from16 v13, v18

    move/from16 v18, v19

    const/4 v0, 0x2

    if-ne v3, v0, :cond_9

    invoke-direct {v15, v14, v13}, Lnyb;->F(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v5

    invoke-direct {v15, v13}, Lnyb;->D(I)Lnyo;

    move-result-object v1

    move-object v0, v5

    move-object/from16 v2, p2

    move v3, v8

    move/from16 v4, p4

    move-object v8, v5

    move-object/from16 v5, p5

    invoke-static/range {v0 .. v5}, Lkwp;->at(Ljava/lang/Object;Lnyo;[BIILnvj;)I

    move-result v0

    invoke-direct {v15, v14, v13, v8}, Lnyb;->P(Ljava/lang/Object;ILjava/lang/Object;)V

    or-int/2addr v6, v10

    move v2, v13

    move/from16 v1, v18

    const/4 v10, -0x1

    move/from16 v13, p4

    goto/16 :goto_0

    :pswitch_5
    move/from16 v8, p3

    move/from16 v13, v18

    move/from16 v18, v19

    const/4 v0, 0x2

    if-ne v3, v0, :cond_9

    const/high16 v0, 0x20000000

    and-int v0, v23, v0

    if-nez v0, :cond_7

    invoke-static {v12, v8, v11}, Lkwp;->al([BILnvj;)I

    move-result v0

    goto :goto_5

    :cond_7
    invoke-static {v12, v8, v11}, Lkwp;->am([BILnvj;)I

    move-result v0

    :goto_5
    iget-object v1, v11, Lnvj;->c:Ljava/lang/Object;

    invoke-virtual {v9, v14, v4, v5, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    or-int/2addr v6, v10

    move v2, v13

    move/from16 v1, v18

    const/4 v10, -0x1

    move/from16 v13, p4

    goto/16 :goto_0

    :pswitch_6
    move/from16 v8, p3

    move/from16 v13, v18

    move/from16 v18, v19

    if-nez v3, :cond_9

    invoke-static {v12, v8, v11}, Lkwp;->ar([BILnvj;)I

    move-result v0

    iget-wide v1, v11, Lnvj;->b:J

    const-wide/16 v23, 0x0

    cmp-long v3, v1, v23

    if-eqz v3, :cond_8

    const/4 v1, 0x1

    goto :goto_6

    :cond_8
    const/4 v1, 0x0

    :goto_6
    invoke-static {v14, v4, v5, v1}, Lnzi;->m(Ljava/lang/Object;JZ)V

    or-int/2addr v6, v10

    move v2, v13

    move/from16 v1, v18

    const/4 v10, -0x1

    move/from16 v13, p4

    goto/16 :goto_0

    :pswitch_7
    move/from16 v8, p3

    move/from16 v13, v18

    move/from16 v18, v19

    if-ne v3, v0, :cond_9

    invoke-static {v12, v8}, Lkwp;->ag([BI)I

    move-result v0

    invoke-virtual {v9, v14, v4, v5, v0}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    add-int/lit8 v0, v8, 0x4

    or-int/2addr v6, v10

    move v2, v13

    move/from16 v1, v18

    const/4 v10, -0x1

    move/from16 v13, p4

    goto/16 :goto_0

    :pswitch_8
    move/from16 v8, p3

    move/from16 v13, v18

    move/from16 v18, v19

    const/4 v0, 0x1

    if-ne v3, v0, :cond_9

    invoke-static {v12, v8}, Lkwp;->av([BI)J

    move-result-wide v21

    move-object v0, v9

    move-object/from16 v1, p1

    move-wide v2, v4

    move-wide/from16 v4, v21

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    add-int/lit8 v0, v8, 0x8

    or-int/2addr v6, v10

    move v2, v13

    move/from16 v1, v18

    const/4 v10, -0x1

    move/from16 v13, p4

    goto/16 :goto_0

    :pswitch_9
    move/from16 v8, p3

    move/from16 v13, v18

    move/from16 v18, v19

    if-nez v3, :cond_9

    invoke-static {v12, v8, v11}, Lkwp;->ao([BILnvj;)I

    move-result v0

    iget v1, v11, Lnvj;->a:I

    invoke-virtual {v9, v14, v4, v5, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    or-int/2addr v6, v10

    move v2, v13

    move/from16 v1, v18

    const/4 v10, -0x1

    move/from16 v13, p4

    goto/16 :goto_0

    :pswitch_a
    move/from16 v8, p3

    move/from16 v13, v18

    move/from16 v18, v19

    if-nez v3, :cond_9

    invoke-static {v12, v8, v11}, Lkwp;->ar([BILnvj;)I

    move-result v8

    iget-wide v2, v11, Lnvj;->b:J

    move-object v0, v9

    move-object/from16 v1, p1

    move-wide/from16 v21, v2

    move-wide v2, v4

    move-wide/from16 v4, v21

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    or-int/2addr v6, v10

    move v0, v8

    move v2, v13

    move/from16 v1, v18

    const/4 v10, -0x1

    move/from16 v13, p4

    goto/16 :goto_0

    :pswitch_b
    move/from16 v8, p3

    move/from16 v13, v18

    move/from16 v18, v19

    if-ne v3, v0, :cond_9

    invoke-static {v12, v8}, Lkwp;->ae([BI)F

    move-result v0

    invoke-static {v14, v4, v5, v0}, Lnzi;->r(Ljava/lang/Object;JF)V

    add-int/lit8 v0, v8, 0x4

    or-int/2addr v6, v10

    move v2, v13

    move/from16 v1, v18

    const/4 v10, -0x1

    move/from16 v13, p4

    goto/16 :goto_0

    :pswitch_c
    move/from16 v8, p3

    move/from16 v13, v18

    move/from16 v18, v19

    const/4 v0, 0x1

    if-ne v3, v0, :cond_9

    invoke-static {v12, v8}, Lkwp;->ad([BI)D

    move-result-wide v0

    invoke-static {v14, v4, v5, v0, v1}, Lnzi;->q(Ljava/lang/Object;JD)V

    add-int/lit8 v0, v8, 0x8

    or-int/2addr v6, v10

    move v2, v13

    move/from16 v1, v18

    const/4 v10, -0x1

    move/from16 v13, p4

    goto/16 :goto_0

    :cond_9
    :goto_7
    move v2, v8

    move-object/from16 v27, v9

    move/from16 v22, v13

    const/16 v28, -0x1

    goto/16 :goto_b

    :cond_a
    move/from16 v10, p3

    move/from16 v23, v1

    move v13, v2

    move/from16 v18, v19

    const/16 v0, 0x1b

    if-ne v8, v0, :cond_e

    const/4 v0, 0x2

    if-ne v3, v0, :cond_d

    invoke-virtual {v9, v14, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnxa;

    invoke-interface {v0}, Lnxa;->c()Z

    move-result v1

    if-nez v1, :cond_c

    invoke-interface {v0}, Lnxa;->size()I

    move-result v1

    if-nez v1, :cond_b

    const/16 v1, 0xa

    goto :goto_8

    :cond_b
    add-int/2addr v1, v1

    :goto_8
    invoke-interface {v0, v1}, Lnxa;->e(I)Lnxa;

    move-result-object v0

    invoke-virtual {v9, v14, v4, v5, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    move-object v5, v0

    goto :goto_9

    :cond_c
    move-object v5, v0

    :goto_9
    invoke-direct {v15, v13}, Lnyb;->D(I)Lnyo;

    move-result-object v0

    move/from16 v1, v17

    move-object/from16 v2, p2

    move v3, v10

    move/from16 v4, p4

    move v8, v6

    move-object/from16 v6, p5

    invoke-static/range {v0 .. v6}, Lkwp;->aj(Lnyo;I[BIILnxa;Lnvj;)I

    move-result v0

    move v6, v8

    move v2, v13

    move/from16 v1, v18

    const/4 v10, -0x1

    move/from16 v13, p4

    goto/16 :goto_0

    :cond_d
    move v8, v6

    move/from16 v20, v7

    move/from16 v25, v8

    move-object/from16 v27, v9

    move v15, v10

    move/from16 v22, v13

    const/16 v28, -0x1

    goto/16 :goto_a

    :cond_e
    const/16 v0, 0x31

    if-gt v8, v0, :cond_10

    move/from16 v1, v23

    int-to-long v1, v1

    move-object/from16 v0, p0

    move-wide/from16 v21, v1

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v19, v3

    move v3, v10

    move-wide/from16 v23, v4

    move/from16 v4, p4

    move/from16 v5, v17

    move v15, v6

    move/from16 v6, v18

    move/from16 v25, v15

    move v15, v7

    move/from16 v7, v19

    move/from16 v26, v8

    move v8, v13

    move-object/from16 v27, v9

    move/from16 v20, v15

    const/16 v28, -0x1

    move v15, v10

    move-wide/from16 v9, v21

    move/from16 v11, v26

    move/from16 v22, v13

    move-wide/from16 v12, v23

    move-object/from16 v14, p5

    invoke-direct/range {v0 .. v14}, Lnyb;->t(Ljava/lang/Object;[BIIIIIIJIJLnvj;)I

    move-result v0

    if-eq v0, v15, :cond_f

    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move-object/from16 v12, p2

    move/from16 v13, p4

    move-object/from16 v11, p5

    move/from16 v1, v18

    move/from16 v7, v20

    move/from16 v2, v22

    move/from16 v6, v25

    move-object/from16 v9, v27

    const/4 v10, -0x1

    goto/16 :goto_0

    :cond_f
    move v2, v0

    move/from16 v7, v20

    move/from16 v6, v25

    goto/16 :goto_b

    :cond_10
    move/from16 v19, v3

    move/from16 v25, v6

    move/from16 v20, v7

    move/from16 v26, v8

    move-object/from16 v27, v9

    move v15, v10

    move/from16 v22, v13

    move/from16 v1, v23

    const/16 v28, -0x1

    move-wide/from16 v23, v4

    const/16 v0, 0x32

    move/from16 v9, v26

    if-ne v9, v0, :cond_13

    move/from16 v7, v19

    const/4 v0, 0x2

    if-ne v7, v0, :cond_12

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move v3, v15

    move/from16 v4, p4

    move/from16 v5, v22

    move-wide/from16 v6, v23

    move-object/from16 v8, p5

    invoke-direct/range {v0 .. v8}, Lnyb;->r(Ljava/lang/Object;[BIIIJLnvj;)I

    move-result v0

    if-eq v0, v15, :cond_11

    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move-object/from16 v12, p2

    move/from16 v13, p4

    move-object/from16 v11, p5

    move/from16 v1, v18

    move/from16 v7, v20

    move/from16 v2, v22

    move/from16 v6, v25

    move-object/from16 v9, v27

    const/4 v10, -0x1

    goto/16 :goto_0

    :cond_11
    move v2, v0

    move/from16 v7, v20

    move/from16 v6, v25

    goto :goto_b

    :cond_12
    :goto_a
    move v2, v15

    move/from16 v7, v20

    move/from16 v6, v25

    goto :goto_b

    :cond_13
    move/from16 v7, v19

    move-object/from16 v0, p0

    move v8, v1

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move v3, v15

    move/from16 v4, p4

    move/from16 v5, v17

    move/from16 v6, v18

    move-wide/from16 v10, v23

    move/from16 v12, v22

    move-object/from16 v13, p5

    invoke-direct/range {v0 .. v13}, Lnyb;->s(Ljava/lang/Object;[BIIIIIIIJILnvj;)I

    move-result v0

    if-eq v0, v15, :cond_14

    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move-object/from16 v12, p2

    move/from16 v13, p4

    move-object/from16 v11, p5

    move/from16 v1, v18

    move/from16 v7, v20

    move/from16 v2, v22

    move/from16 v6, v25

    move-object/from16 v9, v27

    const/4 v10, -0x1

    goto/16 :goto_0

    :cond_14
    move v2, v0

    move/from16 v7, v20

    move/from16 v6, v25

    :goto_b
    invoke-static/range {p1 .. p1}, Lnyb;->d(Ljava/lang/Object;)Lnza;

    move-result-object v4

    move/from16 v0, v17

    move-object/from16 v1, p2

    move/from16 v3, p4

    move-object/from16 v5, p5

    invoke-static/range {v0 .. v5}, Lkwp;->an(I[BIILnza;Lnvj;)I

    move-result v0

    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move-object/from16 v12, p2

    move/from16 v13, p4

    move-object/from16 v11, p5

    move/from16 v1, v18

    move/from16 v2, v22

    move-object/from16 v9, v27

    const/4 v10, -0x1

    goto/16 :goto_0

    :cond_15
    move/from16 v25, v6

    move/from16 v20, v7

    move-object/from16 v27, v9

    const v1, 0xfffff

    if-eq v7, v1, :cond_16

    int-to-long v1, v7

    move-object/from16 v3, p1

    move/from16 v6, v25

    move-object/from16 v4, v27

    invoke-virtual {v4, v3, v1, v2, v6}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_16
    move/from16 v4, p4

    if-ne v0, v4, :cond_17

    return-void

    :cond_17
    invoke-static {}, Lnxd;->g()Lnxd;

    move-result-object v0

    throw v0

    :cond_18
    move v4, v13

    move-object v3, v14

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v6, p5

    invoke-virtual/range {v0 .. v6}, Lnyb;->c(Ljava/lang/Object;[BIIILnvj;)I

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_9
        :pswitch_2
        :pswitch_7
        :pswitch_8
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final j(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 8

    iget-object v0, p0, Lnyb;->c:[I

    array-length v0, v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    invoke-direct {p0, v2}, Lnyb;->z(I)I

    move-result v3

    invoke-static {v3}, Lnyb;->A(I)J

    move-result-wide v4

    invoke-static {v3}, Lnyb;->y(I)I

    move-result v3

    packed-switch v3, :pswitch_data_0

    goto/16 :goto_3

    :pswitch_0
    invoke-direct {p0, v2}, Lnyb;->w(I)I

    move-result v3

    const v6, 0xfffff

    and-int/2addr v3, v6

    int-to-long v6, v3

    invoke-static {p1, v6, v7}, Lnzi;->d(Ljava/lang/Object;J)I

    move-result v3

    invoke-static {p2, v6, v7}, Lnzi;->d(Ljava/lang/Object;J)I

    move-result v6

    if-ne v3, v6, :cond_0

    invoke-static {p1, v4, v5}, Lnzi;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p2, v4, v5}, Lnzi;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3, v4}, Lnyp;->p(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    goto/16 :goto_2

    :pswitch_1
    invoke-static {p1, v4, v5}, Lnzi;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p2, v4, v5}, Lnzi;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3, v4}, Lnyp;->p(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    goto :goto_1

    :pswitch_2
    invoke-static {p1, v4, v5}, Lnzi;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p2, v4, v5}, Lnzi;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3, v4}, Lnyp;->p(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    :goto_1
    if-nez v3, :cond_1

    goto/16 :goto_2

    :pswitch_3
    invoke-direct {p0, p1, p2, v2}, Lnyb;->R(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {p1, v4, v5}, Lnzi;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p2, v4, v5}, Lnzi;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3, v4}, Lnyp;->p(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto/16 :goto_3

    :pswitch_4
    invoke-direct {p0, p1, p2, v2}, Lnyb;->R(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {p1, v4, v5}, Lnzi;->f(Ljava/lang/Object;J)J

    move-result-wide v6

    invoke-static {p2, v4, v5}, Lnzi;->f(Ljava/lang/Object;J)J

    move-result-wide v3

    cmp-long v5, v6, v3

    if-nez v5, :cond_0

    goto/16 :goto_3

    :pswitch_5
    invoke-direct {p0, p1, p2, v2}, Lnyb;->R(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {p1, v4, v5}, Lnzi;->d(Ljava/lang/Object;J)I

    move-result v3

    invoke-static {p2, v4, v5}, Lnzi;->d(Ljava/lang/Object;J)I

    move-result v4

    if-ne v3, v4, :cond_0

    goto/16 :goto_3

    :pswitch_6
    invoke-direct {p0, p1, p2, v2}, Lnyb;->R(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {p1, v4, v5}, Lnzi;->f(Ljava/lang/Object;J)J

    move-result-wide v6

    invoke-static {p2, v4, v5}, Lnzi;->f(Ljava/lang/Object;J)J

    move-result-wide v3

    cmp-long v5, v6, v3

    if-nez v5, :cond_0

    goto/16 :goto_3

    :pswitch_7
    invoke-direct {p0, p1, p2, v2}, Lnyb;->R(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {p1, v4, v5}, Lnzi;->d(Ljava/lang/Object;J)I

    move-result v3

    invoke-static {p2, v4, v5}, Lnzi;->d(Ljava/lang/Object;J)I

    move-result v4

    if-ne v3, v4, :cond_0

    goto/16 :goto_3

    :pswitch_8
    invoke-direct {p0, p1, p2, v2}, Lnyb;->R(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {p1, v4, v5}, Lnzi;->d(Ljava/lang/Object;J)I

    move-result v3

    invoke-static {p2, v4, v5}, Lnzi;->d(Ljava/lang/Object;J)I

    move-result v4

    if-ne v3, v4, :cond_0

    goto/16 :goto_3

    :pswitch_9
    invoke-direct {p0, p1, p2, v2}, Lnyb;->R(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {p1, v4, v5}, Lnzi;->d(Ljava/lang/Object;J)I

    move-result v3

    invoke-static {p2, v4, v5}, Lnzi;->d(Ljava/lang/Object;J)I

    move-result v4

    if-ne v3, v4, :cond_0

    goto/16 :goto_3

    :pswitch_a
    invoke-direct {p0, p1, p2, v2}, Lnyb;->R(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {p1, v4, v5}, Lnzi;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p2, v4, v5}, Lnzi;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3, v4}, Lnyp;->p(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto/16 :goto_3

    :pswitch_b
    invoke-direct {p0, p1, p2, v2}, Lnyb;->R(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {p1, v4, v5}, Lnzi;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p2, v4, v5}, Lnzi;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3, v4}, Lnyp;->p(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto/16 :goto_3

    :pswitch_c
    invoke-direct {p0, p1, p2, v2}, Lnyb;->R(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {p1, v4, v5}, Lnzi;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p2, v4, v5}, Lnzi;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3, v4}, Lnyp;->p(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto/16 :goto_3

    :pswitch_d
    invoke-direct {p0, p1, p2, v2}, Lnyb;->R(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {p1, v4, v5}, Lnzi;->w(Ljava/lang/Object;J)Z

    move-result v3

    invoke-static {p2, v4, v5}, Lnzi;->w(Ljava/lang/Object;J)Z

    move-result v4

    if-ne v3, v4, :cond_0

    goto/16 :goto_3

    :pswitch_e
    invoke-direct {p0, p1, p2, v2}, Lnyb;->R(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {p1, v4, v5}, Lnzi;->d(Ljava/lang/Object;J)I

    move-result v3

    invoke-static {p2, v4, v5}, Lnzi;->d(Ljava/lang/Object;J)I

    move-result v4

    if-ne v3, v4, :cond_0

    goto/16 :goto_3

    :pswitch_f
    invoke-direct {p0, p1, p2, v2}, Lnyb;->R(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {p1, v4, v5}, Lnzi;->f(Ljava/lang/Object;J)J

    move-result-wide v6

    invoke-static {p2, v4, v5}, Lnzi;->f(Ljava/lang/Object;J)J

    move-result-wide v3

    cmp-long v5, v6, v3

    if-nez v5, :cond_0

    goto/16 :goto_3

    :pswitch_10
    invoke-direct {p0, p1, p2, v2}, Lnyb;->R(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {p1, v4, v5}, Lnzi;->d(Ljava/lang/Object;J)I

    move-result v3

    invoke-static {p2, v4, v5}, Lnzi;->d(Ljava/lang/Object;J)I

    move-result v4

    if-ne v3, v4, :cond_0

    goto :goto_3

    :pswitch_11
    invoke-direct {p0, p1, p2, v2}, Lnyb;->R(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {p1, v4, v5}, Lnzi;->f(Ljava/lang/Object;J)J

    move-result-wide v6

    invoke-static {p2, v4, v5}, Lnzi;->f(Ljava/lang/Object;J)J

    move-result-wide v3

    cmp-long v5, v6, v3

    if-nez v5, :cond_0

    goto :goto_3

    :pswitch_12
    invoke-direct {p0, p1, p2, v2}, Lnyb;->R(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {p1, v4, v5}, Lnzi;->f(Ljava/lang/Object;J)J

    move-result-wide v6

    invoke-static {p2, v4, v5}, Lnzi;->f(Ljava/lang/Object;J)J

    move-result-wide v3

    cmp-long v5, v6, v3

    if-nez v5, :cond_0

    goto :goto_3

    :pswitch_13
    invoke-direct {p0, p1, p2, v2}, Lnyb;->R(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {p1, v4, v5}, Lnzi;->c(Ljava/lang/Object;J)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    invoke-static {p2, v4, v5}, Lnzi;->c(Ljava/lang/Object;J)F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v4

    if-ne v3, v4, :cond_0

    goto :goto_3

    :pswitch_14
    invoke-direct {p0, p1, p2, v2}, Lnyb;->R(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {p1, v4, v5}, Lnzi;->b(Ljava/lang/Object;J)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v6

    invoke-static {p2, v4, v5}, Lnzi;->b(Ljava/lang/Object;J)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    cmp-long v5, v6, v3

    if-nez v5, :cond_0

    goto :goto_3

    :cond_0
    :goto_2
    return v1

    :cond_1
    :goto_3
    add-int/lit8 v2, v2, 0x3

    goto/16 :goto_0

    :cond_2
    invoke-static {p1}, Lkwp;->N(Ljava/lang/Object;)Lnza;

    move-result-object v0

    invoke-static {p2}, Lkwp;->N(Ljava/lang/Object;)Lnza;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    return v1

    :cond_3
    iget-boolean v0, p0, Lnyb;->h:Z

    if-eqz v0, :cond_4

    invoke-static {p1}, Lkwp;->Y(Ljava/lang/Object;)Lnwj;

    move-result-object p1

    invoke-static {p2}, Lkwp;->Y(Ljava/lang/Object;)Lnwj;

    move-result-object p2

    invoke-virtual {p1, p2}, Lnwj;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_4
    const/4 p1, 0x1

    return p1

    :pswitch_data_0
    .packed-switch 0x0
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
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final k(Ljava/lang/Object;)Z
    .locals 17

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    const/4 v8, 0x0

    const v9, 0xfffff

    const v0, 0xfffff

    const/4 v1, 0x0

    const/4 v10, 0x0

    :goto_0
    iget v2, v6, Lnyb;->l:I

    const/4 v3, 0x1

    if-ge v10, v2, :cond_8

    iget-object v2, v6, Lnyb;->k:[I

    aget v11, v2, v10

    invoke-direct {v6, v11}, Lnyb;->p(I)I

    move-result v12

    invoke-direct {v6, v11}, Lnyb;->z(I)I

    move-result v13

    iget-object v2, v6, Lnyb;->c:[I

    add-int/lit8 v4, v11, 0x2

    aget v2, v2, v4

    and-int v4, v2, v9

    ushr-int/lit8 v2, v2, 0x14

    shl-int v14, v3, v2

    if-eq v4, v0, :cond_1

    if-eq v4, v9, :cond_0

    int-to-long v0, v4

    sget-object v2, Lnyb;->b:Lsun/misc/Unsafe;

    invoke-virtual {v2, v7, v0, v1}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v1

    move/from16 v16, v1

    move v15, v4

    goto :goto_1

    :cond_0
    move/from16 v16, v1

    move v15, v4

    goto :goto_1

    :cond_1
    move v15, v0

    move/from16 v16, v1

    :goto_1
    const/high16 v0, 0x10000000

    and-int/2addr v0, v13

    if-eqz v0, :cond_3

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v11

    move v3, v15

    move/from16 v4, v16

    move v5, v14

    invoke-direct/range {v0 .. v5}, Lnyb;->U(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    return v8

    :cond_3
    :goto_2
    invoke-static {v13}, Lnyb;->y(I)I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_4

    :sswitch_0
    invoke-direct {v6, v7, v12, v11}, Lnyb;->X(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-direct {v6, v11}, Lnyb;->D(I)Lnyo;

    move-result-object v0

    invoke-static {v7, v13, v0}, Lnyb;->V(Ljava/lang/Object;ILnyo;)Z

    move-result v0

    if-nez v0, :cond_7

    return v8

    :sswitch_1
    invoke-static {v13}, Lnyb;->A(I)J

    move-result-wide v0

    invoke-static {v7, v0, v1}, Lnzi;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnxt;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_7

    invoke-direct {v6, v11}, Lnyb;->E(I)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lkwp;->az(Ljava/lang/Object;)Llhj;

    move-result-object v1

    iget-object v1, v1, Llhj;->a:Ljava/lang/Object;

    check-cast v1, Lnzl;

    iget-object v1, v1, Lnzl;->s:Lnzm;

    sget-object v2, Lnzm;->i:Lnzm;

    if-ne v1, v2, :cond_7

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    if-nez v1, :cond_5

    sget-object v1, Lnyh;->a:Lnyh;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v1, v3}, Lnyh;->a(Ljava/lang/Class;)Lnyo;

    move-result-object v1

    :cond_5
    invoke-interface {v1, v2}, Lnyo;->k(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v8

    :sswitch_2
    invoke-static {v13}, Lnyb;->A(I)J

    move-result-wide v0

    invoke-static {v7, v0, v1}, Lnzi;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_7

    invoke-direct {v6, v11}, Lnyb;->D(I)Lnyo;

    move-result-object v1

    const/4 v2, 0x0

    :goto_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_7

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v3}, Lnyo;->k(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    return v8

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :sswitch_3
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v11

    move v3, v15

    move/from16 v4, v16

    move v5, v14

    invoke-direct/range {v0 .. v5}, Lnyb;->U(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-direct {v6, v11}, Lnyb;->D(I)Lnyo;

    move-result-object v0

    invoke-static {v7, v13, v0}, Lnyb;->V(Ljava/lang/Object;ILnyo;)Z

    move-result v0

    if-nez v0, :cond_7

    return v8

    :cond_7
    :goto_4
    add-int/lit8 v10, v10, 0x1

    move v0, v15

    move/from16 v1, v16

    goto/16 :goto_0

    :cond_8
    iget-boolean v0, v6, Lnyb;->h:Z

    if-eqz v0, :cond_9

    invoke-static/range {p1 .. p1}, Lkwp;->Y(Ljava/lang/Object;)Lnwj;

    move-result-object v0

    invoke-virtual {v0}, Lnwj;->i()Z

    move-result v0

    if-nez v0, :cond_9

    return v8

    :cond_9
    return v3

    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_3
        0x11 -> :sswitch_3
        0x1b -> :sswitch_2
        0x31 -> :sswitch_2
        0x32 -> :sswitch_1
        0x3c -> :sswitch_0
        0x44 -> :sswitch_0
    .end sparse-switch
.end method

.method public final l(Ljava/lang/Object;Llzz;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    iget-boolean v3, v0, Lnyb;->j:Z

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v3, :cond_7

    iget-boolean v3, v0, Lnyb;->h:Z

    if-eqz v3, :cond_0

    invoke-static/range {p1 .. p1}, Lkwp;->Y(Ljava/lang/Object;)Lnwj;

    move-result-object v3

    invoke-virtual {v3}, Lnwj;->h()Z

    move-result v7

    if-nez v7, :cond_0

    invoke-virtual {v3}, Lnwj;->d()Ljava/util/Iterator;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    const/4 v7, 0x0

    :goto_0
    iget-object v8, v0, Lnyb;->c:[I

    array-length v8, v8

    const/4 v9, 0x0

    :goto_1
    if-ge v9, v8, :cond_4

    invoke-direct {v0, v9}, Lnyb;->z(I)I

    move-result v10

    invoke-direct {v0, v9}, Lnyb;->p(I)I

    move-result v11

    :goto_2
    if-eqz v7, :cond_2

    invoke-static {v7}, Lkwp;->X(Ljava/util/Map$Entry;)I

    move-result v12

    if-gt v12, v11, :cond_2

    invoke-static {v2, v7}, Lkwp;->aA(Llzz;Ljava/util/Map$Entry;)V

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    goto :goto_2

    :cond_1
    const/4 v7, 0x0

    goto :goto_2

    :cond_2
    invoke-static {v10}, Lnyb;->y(I)I

    move-result v12

    packed-switch v12, :pswitch_data_0

    goto/16 :goto_3

    :pswitch_0
    invoke-direct {v0, v1, v11, v9}, Lnyb;->X(Ljava/lang/Object;II)Z

    move-result v12

    if-eqz v12, :cond_3

    invoke-static {v10}, Lnyb;->A(I)J

    move-result-wide v12

    invoke-static {v1, v12, v13}, Lnzi;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    invoke-direct {v0, v9}, Lnyb;->D(I)Lnyo;

    move-result-object v12

    invoke-virtual {v2, v11, v10, v12}, Llzz;->n(ILjava/lang/Object;Lnyo;)V

    goto/16 :goto_3

    :pswitch_1
    invoke-direct {v0, v1, v11, v9}, Lnyb;->X(Ljava/lang/Object;II)Z

    move-result v12

    if-eqz v12, :cond_3

    invoke-static {v10}, Lnyb;->A(I)J

    move-result-wide v12

    invoke-static {v1, v12, v13}, Lnyb;->B(Ljava/lang/Object;J)J

    move-result-wide v12

    invoke-virtual {v2, v11, v12, v13}, Llzz;->v(IJ)V

    goto/16 :goto_3

    :pswitch_2
    invoke-direct {v0, v1, v11, v9}, Lnyb;->X(Ljava/lang/Object;II)Z

    move-result v12

    if-eqz v12, :cond_3

    invoke-static {v10}, Lnyb;->A(I)J

    move-result-wide v12

    invoke-static {v1, v12, v13}, Lnyb;->q(Ljava/lang/Object;J)I

    move-result v10

    invoke-virtual {v2, v11, v10}, Llzz;->u(II)V

    goto/16 :goto_3

    :pswitch_3
    invoke-direct {v0, v1, v11, v9}, Lnyb;->X(Ljava/lang/Object;II)Z

    move-result v12

    if-eqz v12, :cond_3

    invoke-static {v10}, Lnyb;->A(I)J

    move-result-wide v12

    invoke-static {v1, v12, v13}, Lnyb;->B(Ljava/lang/Object;J)J

    move-result-wide v12

    invoke-virtual {v2, v11, v12, v13}, Llzz;->t(IJ)V

    goto/16 :goto_3

    :pswitch_4
    invoke-direct {v0, v1, v11, v9}, Lnyb;->X(Ljava/lang/Object;II)Z

    move-result v12

    if-eqz v12, :cond_3

    invoke-static {v10}, Lnyb;->A(I)J

    move-result-wide v12

    invoke-static {v1, v12, v13}, Lnyb;->q(Ljava/lang/Object;J)I

    move-result v10

    invoke-virtual {v2, v11, v10}, Llzz;->s(II)V

    goto/16 :goto_3

    :pswitch_5
    invoke-direct {v0, v1, v11, v9}, Lnyb;->X(Ljava/lang/Object;II)Z

    move-result v12

    if-eqz v12, :cond_3

    invoke-static {v10}, Lnyb;->A(I)J

    move-result-wide v12

    invoke-static {v1, v12, v13}, Lnyb;->q(Ljava/lang/Object;J)I

    move-result v10

    invoke-virtual {v2, v11, v10}, Llzz;->j(II)V

    goto/16 :goto_3

    :pswitch_6
    invoke-direct {v0, v1, v11, v9}, Lnyb;->X(Ljava/lang/Object;II)Z

    move-result v12

    if-eqz v12, :cond_3

    invoke-static {v10}, Lnyb;->A(I)J

    move-result-wide v12

    invoke-static {v1, v12, v13}, Lnyb;->q(Ljava/lang/Object;J)I

    move-result v10

    invoke-virtual {v2, v11, v10}, Llzz;->x(II)V

    goto/16 :goto_3

    :pswitch_7
    invoke-direct {v0, v1, v11, v9}, Lnyb;->X(Ljava/lang/Object;II)Z

    move-result v12

    if-eqz v12, :cond_3

    invoke-static {v10}, Lnyb;->A(I)J

    move-result-wide v12

    invoke-static {v1, v12, v13}, Lnzi;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lnvt;

    invoke-virtual {v2, v11, v10}, Llzz;->h(ILnvt;)V

    goto/16 :goto_3

    :pswitch_8
    invoke-direct {v0, v1, v11, v9}, Lnyb;->X(Ljava/lang/Object;II)Z

    move-result v12

    if-eqz v12, :cond_3

    invoke-static {v10}, Lnyb;->A(I)J

    move-result-wide v12

    invoke-static {v1, v12, v13}, Lnzi;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    invoke-direct {v0, v9}, Lnyb;->D(I)Lnyo;

    move-result-object v12

    invoke-virtual {v2, v11, v10, v12}, Llzz;->q(ILjava/lang/Object;Lnyo;)V

    goto/16 :goto_3

    :pswitch_9
    invoke-direct {v0, v1, v11, v9}, Lnyb;->X(Ljava/lang/Object;II)Z

    move-result v12

    if-eqz v12, :cond_3

    invoke-static {v10}, Lnyb;->A(I)J

    move-result-wide v12

    invoke-static {v1, v12, v13}, Lnzi;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    invoke-static {v11, v10, v2}, Lnyb;->ad(ILjava/lang/Object;Llzz;)V

    goto/16 :goto_3

    :pswitch_a
    invoke-direct {v0, v1, v11, v9}, Lnyb;->X(Ljava/lang/Object;II)Z

    move-result v12

    if-eqz v12, :cond_3

    invoke-static {v10}, Lnyb;->A(I)J

    move-result-wide v12

    invoke-static {v1, v12, v13}, Lnyb;->Y(Ljava/lang/Object;J)Z

    move-result v10

    invoke-virtual {v2, v11, v10}, Llzz;->g(IZ)V

    goto/16 :goto_3

    :pswitch_b
    invoke-direct {v0, v1, v11, v9}, Lnyb;->X(Ljava/lang/Object;II)Z

    move-result v12

    if-eqz v12, :cond_3

    invoke-static {v10}, Lnyb;->A(I)J

    move-result-wide v12

    invoke-static {v1, v12, v13}, Lnyb;->q(Ljava/lang/Object;J)I

    move-result v10

    invoke-virtual {v2, v11, v10}, Llzz;->k(II)V

    goto/16 :goto_3

    :pswitch_c
    invoke-direct {v0, v1, v11, v9}, Lnyb;->X(Ljava/lang/Object;II)Z

    move-result v12

    if-eqz v12, :cond_3

    invoke-static {v10}, Lnyb;->A(I)J

    move-result-wide v12

    invoke-static {v1, v12, v13}, Lnyb;->B(Ljava/lang/Object;J)J

    move-result-wide v12

    invoke-virtual {v2, v11, v12, v13}, Llzz;->l(IJ)V

    goto/16 :goto_3

    :pswitch_d
    invoke-direct {v0, v1, v11, v9}, Lnyb;->X(Ljava/lang/Object;II)Z

    move-result v12

    if-eqz v12, :cond_3

    invoke-static {v10}, Lnyb;->A(I)J

    move-result-wide v12

    invoke-static {v1, v12, v13}, Lnyb;->q(Ljava/lang/Object;J)I

    move-result v10

    invoke-virtual {v2, v11, v10}, Llzz;->o(II)V

    goto/16 :goto_3

    :pswitch_e
    invoke-direct {v0, v1, v11, v9}, Lnyb;->X(Ljava/lang/Object;II)Z

    move-result v12

    if-eqz v12, :cond_3

    invoke-static {v10}, Lnyb;->A(I)J

    move-result-wide v12

    invoke-static {v1, v12, v13}, Lnyb;->B(Ljava/lang/Object;J)J

    move-result-wide v12

    invoke-virtual {v2, v11, v12, v13}, Llzz;->y(IJ)V

    goto/16 :goto_3

    :pswitch_f
    invoke-direct {v0, v1, v11, v9}, Lnyb;->X(Ljava/lang/Object;II)Z

    move-result v12

    if-eqz v12, :cond_3

    invoke-static {v10}, Lnyb;->A(I)J

    move-result-wide v12

    invoke-static {v1, v12, v13}, Lnyb;->B(Ljava/lang/Object;J)J

    move-result-wide v12

    invoke-virtual {v2, v11, v12, v13}, Llzz;->p(IJ)V

    goto/16 :goto_3

    :pswitch_10
    invoke-direct {v0, v1, v11, v9}, Lnyb;->X(Ljava/lang/Object;II)Z

    move-result v12

    if-eqz v12, :cond_3

    invoke-static {v10}, Lnyb;->A(I)J

    move-result-wide v12

    invoke-static {v1, v12, v13}, Lnyb;->o(Ljava/lang/Object;J)F

    move-result v10

    invoke-virtual {v2, v11, v10}, Llzz;->m(IF)V

    goto/16 :goto_3

    :pswitch_11
    invoke-direct {v0, v1, v11, v9}, Lnyb;->X(Ljava/lang/Object;II)Z

    move-result v12

    if-eqz v12, :cond_3

    invoke-static {v10}, Lnyb;->A(I)J

    move-result-wide v12

    invoke-static {v1, v12, v13}, Lnyb;->n(Ljava/lang/Object;J)D

    move-result-wide v12

    invoke-virtual {v2, v11, v12, v13}, Llzz;->i(ID)V

    goto/16 :goto_3

    :pswitch_12
    invoke-static {v10}, Lnyb;->A(I)J

    move-result-wide v12

    invoke-static {v1, v12, v13}, Lnzi;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    invoke-direct {v0, v2, v11, v10, v9}, Lnyb;->ac(Llzz;ILjava/lang/Object;I)V

    goto/16 :goto_3

    :pswitch_13
    invoke-direct {v0, v9}, Lnyb;->p(I)I

    move-result v11

    invoke-static {v10}, Lnyb;->A(I)J

    move-result-wide v12

    invoke-static {v1, v12, v13}, Lnzi;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-direct {v0, v9}, Lnyb;->D(I)Lnyo;

    move-result-object v12

    invoke-static {v11, v10, v2, v12}, Lnyp;->K(ILjava/util/List;Llzz;Lnyo;)V

    goto/16 :goto_3

    :pswitch_14
    invoke-direct {v0, v9}, Lnyb;->p(I)I

    move-result v11

    invoke-static {v10}, Lnyb;->A(I)J

    move-result-wide v12

    invoke-static {v1, v12, v13}, Lnzi;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-static {v11, v10, v2, v5}, Lnyp;->R(ILjava/util/List;Llzz;Z)V

    goto/16 :goto_3

    :pswitch_15
    invoke-direct {v0, v9}, Lnyb;->p(I)I

    move-result v11

    invoke-static {v10}, Lnyb;->A(I)J

    move-result-wide v12

    invoke-static {v1, v12, v13}, Lnzi;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-static {v11, v10, v2, v5}, Lnyp;->Q(ILjava/util/List;Llzz;Z)V

    goto/16 :goto_3

    :pswitch_16
    invoke-direct {v0, v9}, Lnyb;->p(I)I

    move-result v11

    invoke-static {v10}, Lnyb;->A(I)J

    move-result-wide v12

    invoke-static {v1, v12, v13}, Lnzi;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-static {v11, v10, v2, v5}, Lnyp;->P(ILjava/util/List;Llzz;Z)V

    goto/16 :goto_3

    :pswitch_17
    invoke-direct {v0, v9}, Lnyb;->p(I)I

    move-result v11

    invoke-static {v10}, Lnyb;->A(I)J

    move-result-wide v12

    invoke-static {v1, v12, v13}, Lnzi;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-static {v11, v10, v2, v5}, Lnyp;->O(ILjava/util/List;Llzz;Z)V

    goto/16 :goto_3

    :pswitch_18
    invoke-direct {v0, v9}, Lnyb;->p(I)I

    move-result v11

    invoke-static {v10}, Lnyb;->A(I)J

    move-result-wide v12

    invoke-static {v1, v12, v13}, Lnzi;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-static {v11, v10, v2, v5}, Lnyp;->G(ILjava/util/List;Llzz;Z)V

    goto/16 :goto_3

    :pswitch_19
    invoke-direct {v0, v9}, Lnyb;->p(I)I

    move-result v11

    invoke-static {v10}, Lnyb;->A(I)J

    move-result-wide v12

    invoke-static {v1, v12, v13}, Lnzi;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-static {v11, v10, v2, v5}, Lnyp;->T(ILjava/util/List;Llzz;Z)V

    goto/16 :goto_3

    :pswitch_1a
    invoke-direct {v0, v9}, Lnyb;->p(I)I

    move-result v11

    invoke-static {v10}, Lnyb;->A(I)J

    move-result-wide v12

    invoke-static {v1, v12, v13}, Lnzi;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-static {v11, v10, v2, v5}, Lnyp;->D(ILjava/util/List;Llzz;Z)V

    goto/16 :goto_3

    :pswitch_1b
    invoke-direct {v0, v9}, Lnyb;->p(I)I

    move-result v11

    invoke-static {v10}, Lnyb;->A(I)J

    move-result-wide v12

    invoke-static {v1, v12, v13}, Lnzi;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-static {v11, v10, v2, v5}, Lnyp;->H(ILjava/util/List;Llzz;Z)V

    goto/16 :goto_3

    :pswitch_1c
    invoke-direct {v0, v9}, Lnyb;->p(I)I

    move-result v11

    invoke-static {v10}, Lnyb;->A(I)J

    move-result-wide v12

    invoke-static {v1, v12, v13}, Lnzi;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-static {v11, v10, v2, v5}, Lnyp;->I(ILjava/util/List;Llzz;Z)V

    goto/16 :goto_3

    :pswitch_1d
    invoke-direct {v0, v9}, Lnyb;->p(I)I

    move-result v11

    invoke-static {v10}, Lnyb;->A(I)J

    move-result-wide v12

    invoke-static {v1, v12, v13}, Lnzi;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-static {v11, v10, v2, v5}, Lnyp;->L(ILjava/util/List;Llzz;Z)V

    goto/16 :goto_3

    :pswitch_1e
    invoke-direct {v0, v9}, Lnyb;->p(I)I

    move-result v11

    invoke-static {v10}, Lnyb;->A(I)J

    move-result-wide v12

    invoke-static {v1, v12, v13}, Lnzi;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-static {v11, v10, v2, v5}, Lnyp;->U(ILjava/util/List;Llzz;Z)V

    goto/16 :goto_3

    :pswitch_1f
    invoke-direct {v0, v9}, Lnyb;->p(I)I

    move-result v11

    invoke-static {v10}, Lnyb;->A(I)J

    move-result-wide v12

    invoke-static {v1, v12, v13}, Lnzi;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-static {v11, v10, v2, v5}, Lnyp;->M(ILjava/util/List;Llzz;Z)V

    goto/16 :goto_3

    :pswitch_20
    invoke-direct {v0, v9}, Lnyb;->p(I)I

    move-result v11

    invoke-static {v10}, Lnyb;->A(I)J

    move-result-wide v12

    invoke-static {v1, v12, v13}, Lnzi;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-static {v11, v10, v2, v5}, Lnyp;->J(ILjava/util/List;Llzz;Z)V

    goto/16 :goto_3

    :pswitch_21
    invoke-direct {v0, v9}, Lnyb;->p(I)I

    move-result v11

    invoke-static {v10}, Lnyb;->A(I)J

    move-result-wide v12

    invoke-static {v1, v12, v13}, Lnzi;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-static {v11, v10, v2, v5}, Lnyp;->F(ILjava/util/List;Llzz;Z)V

    goto/16 :goto_3

    :pswitch_22
    invoke-direct {v0, v9}, Lnyb;->p(I)I

    move-result v11

    invoke-static {v10}, Lnyb;->A(I)J

    move-result-wide v12

    invoke-static {v1, v12, v13}, Lnzi;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-static {v11, v10, v2, v6}, Lnyp;->R(ILjava/util/List;Llzz;Z)V

    goto/16 :goto_3

    :pswitch_23
    invoke-direct {v0, v9}, Lnyb;->p(I)I

    move-result v11

    invoke-static {v10}, Lnyb;->A(I)J

    move-result-wide v12

    invoke-static {v1, v12, v13}, Lnzi;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-static {v11, v10, v2, v6}, Lnyp;->Q(ILjava/util/List;Llzz;Z)V

    goto/16 :goto_3

    :pswitch_24
    invoke-direct {v0, v9}, Lnyb;->p(I)I

    move-result v11

    invoke-static {v10}, Lnyb;->A(I)J

    move-result-wide v12

    invoke-static {v1, v12, v13}, Lnzi;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-static {v11, v10, v2, v6}, Lnyp;->P(ILjava/util/List;Llzz;Z)V

    goto/16 :goto_3

    :pswitch_25
    invoke-direct {v0, v9}, Lnyb;->p(I)I

    move-result v11

    invoke-static {v10}, Lnyb;->A(I)J

    move-result-wide v12

    invoke-static {v1, v12, v13}, Lnzi;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-static {v11, v10, v2, v6}, Lnyp;->O(ILjava/util/List;Llzz;Z)V

    goto/16 :goto_3

    :pswitch_26
    invoke-direct {v0, v9}, Lnyb;->p(I)I

    move-result v11

    invoke-static {v10}, Lnyb;->A(I)J

    move-result-wide v12

    invoke-static {v1, v12, v13}, Lnzi;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-static {v11, v10, v2, v6}, Lnyp;->G(ILjava/util/List;Llzz;Z)V

    goto/16 :goto_3

    :pswitch_27
    invoke-direct {v0, v9}, Lnyb;->p(I)I

    move-result v11

    invoke-static {v10}, Lnyb;->A(I)J

    move-result-wide v12

    invoke-static {v1, v12, v13}, Lnzi;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-static {v11, v10, v2, v6}, Lnyp;->T(ILjava/util/List;Llzz;Z)V

    goto/16 :goto_3

    :pswitch_28
    invoke-direct {v0, v9}, Lnyb;->p(I)I

    move-result v11

    invoke-static {v10}, Lnyb;->A(I)J

    move-result-wide v12

    invoke-static {v1, v12, v13}, Lnzi;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-static {v11, v10, v2}, Lnyp;->E(ILjava/util/List;Llzz;)V

    goto/16 :goto_3

    :pswitch_29
    invoke-direct {v0, v9}, Lnyb;->p(I)I

    move-result v11

    invoke-static {v10}, Lnyb;->A(I)J

    move-result-wide v12

    invoke-static {v1, v12, v13}, Lnzi;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-direct {v0, v9}, Lnyb;->D(I)Lnyo;

    move-result-object v12

    invoke-static {v11, v10, v2, v12}, Lnyp;->N(ILjava/util/List;Llzz;Lnyo;)V

    goto/16 :goto_3

    :pswitch_2a
    invoke-direct {v0, v9}, Lnyb;->p(I)I

    move-result v11

    invoke-static {v10}, Lnyb;->A(I)J

    move-result-wide v12

    invoke-static {v1, v12, v13}, Lnzi;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-static {v11, v10, v2}, Lnyp;->S(ILjava/util/List;Llzz;)V

    goto/16 :goto_3

    :pswitch_2b
    invoke-direct {v0, v9}, Lnyb;->p(I)I

    move-result v11

    invoke-static {v10}, Lnyb;->A(I)J

    move-result-wide v12

    invoke-static {v1, v12, v13}, Lnzi;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-static {v11, v10, v2, v6}, Lnyp;->D(ILjava/util/List;Llzz;Z)V

    goto/16 :goto_3

    :pswitch_2c
    invoke-direct {v0, v9}, Lnyb;->p(I)I

    move-result v11

    invoke-static {v10}, Lnyb;->A(I)J

    move-result-wide v12

    invoke-static {v1, v12, v13}, Lnzi;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-static {v11, v10, v2, v6}, Lnyp;->H(ILjava/util/List;Llzz;Z)V

    goto/16 :goto_3

    :pswitch_2d
    invoke-direct {v0, v9}, Lnyb;->p(I)I

    move-result v11

    invoke-static {v10}, Lnyb;->A(I)J

    move-result-wide v12

    invoke-static {v1, v12, v13}, Lnzi;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-static {v11, v10, v2, v6}, Lnyp;->I(ILjava/util/List;Llzz;Z)V

    goto/16 :goto_3

    :pswitch_2e
    invoke-direct {v0, v9}, Lnyb;->p(I)I

    move-result v11

    invoke-static {v10}, Lnyb;->A(I)J

    move-result-wide v12

    invoke-static {v1, v12, v13}, Lnzi;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-static {v11, v10, v2, v6}, Lnyp;->L(ILjava/util/List;Llzz;Z)V

    goto/16 :goto_3

    :pswitch_2f
    invoke-direct {v0, v9}, Lnyb;->p(I)I

    move-result v11

    invoke-static {v10}, Lnyb;->A(I)J

    move-result-wide v12

    invoke-static {v1, v12, v13}, Lnzi;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-static {v11, v10, v2, v6}, Lnyp;->U(ILjava/util/List;Llzz;Z)V

    goto/16 :goto_3

    :pswitch_30
    invoke-direct {v0, v9}, Lnyb;->p(I)I

    move-result v11

    invoke-static {v10}, Lnyb;->A(I)J

    move-result-wide v12

    invoke-static {v1, v12, v13}, Lnzi;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-static {v11, v10, v2, v6}, Lnyp;->M(ILjava/util/List;Llzz;Z)V

    goto/16 :goto_3

    :pswitch_31
    invoke-direct {v0, v9}, Lnyb;->p(I)I

    move-result v11

    invoke-static {v10}, Lnyb;->A(I)J

    move-result-wide v12

    invoke-static {v1, v12, v13}, Lnzi;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-static {v11, v10, v2, v6}, Lnyp;->J(ILjava/util/List;Llzz;Z)V

    goto/16 :goto_3

    :pswitch_32
    invoke-direct {v0, v9}, Lnyb;->p(I)I

    move-result v11

    invoke-static {v10}, Lnyb;->A(I)J

    move-result-wide v12

    invoke-static {v1, v12, v13}, Lnzi;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-static {v11, v10, v2, v6}, Lnyp;->F(ILjava/util/List;Llzz;Z)V

    goto/16 :goto_3

    :pswitch_33
    invoke-direct {v0, v1, v9}, Lnyb;->T(Ljava/lang/Object;I)Z

    move-result v12

    if-eqz v12, :cond_3

    invoke-static {v10}, Lnyb;->A(I)J

    move-result-wide v12

    invoke-static {v1, v12, v13}, Lnzi;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    invoke-direct {v0, v9}, Lnyb;->D(I)Lnyo;

    move-result-object v12

    invoke-virtual {v2, v11, v10, v12}, Llzz;->n(ILjava/lang/Object;Lnyo;)V

    goto/16 :goto_3

    :pswitch_34
    invoke-direct {v0, v1, v9}, Lnyb;->T(Ljava/lang/Object;I)Z

    move-result v12

    if-eqz v12, :cond_3

    invoke-static {v10}, Lnyb;->A(I)J

    move-result-wide v12

    invoke-static {v1, v12, v13}, Lnzi;->f(Ljava/lang/Object;J)J

    move-result-wide v12

    invoke-virtual {v2, v11, v12, v13}, Llzz;->v(IJ)V

    goto/16 :goto_3

    :pswitch_35
    invoke-direct {v0, v1, v9}, Lnyb;->T(Ljava/lang/Object;I)Z

    move-result v12

    if-eqz v12, :cond_3

    invoke-static {v10}, Lnyb;->A(I)J

    move-result-wide v12

    invoke-static {v1, v12, v13}, Lnzi;->d(Ljava/lang/Object;J)I

    move-result v10

    invoke-virtual {v2, v11, v10}, Llzz;->u(II)V

    goto/16 :goto_3

    :pswitch_36
    invoke-direct {v0, v1, v9}, Lnyb;->T(Ljava/lang/Object;I)Z

    move-result v12

    if-eqz v12, :cond_3

    invoke-static {v10}, Lnyb;->A(I)J

    move-result-wide v12

    invoke-static {v1, v12, v13}, Lnzi;->f(Ljava/lang/Object;J)J

    move-result-wide v12

    invoke-virtual {v2, v11, v12, v13}, Llzz;->t(IJ)V

    goto/16 :goto_3

    :pswitch_37
    invoke-direct {v0, v1, v9}, Lnyb;->T(Ljava/lang/Object;I)Z

    move-result v12

    if-eqz v12, :cond_3

    invoke-static {v10}, Lnyb;->A(I)J

    move-result-wide v12

    invoke-static {v1, v12, v13}, Lnzi;->d(Ljava/lang/Object;J)I

    move-result v10

    invoke-virtual {v2, v11, v10}, Llzz;->s(II)V

    goto/16 :goto_3

    :pswitch_38
    invoke-direct {v0, v1, v9}, Lnyb;->T(Ljava/lang/Object;I)Z

    move-result v12

    if-eqz v12, :cond_3

    invoke-static {v10}, Lnyb;->A(I)J

    move-result-wide v12

    invoke-static {v1, v12, v13}, Lnzi;->d(Ljava/lang/Object;J)I

    move-result v10

    invoke-virtual {v2, v11, v10}, Llzz;->j(II)V

    goto/16 :goto_3

    :pswitch_39
    invoke-direct {v0, v1, v9}, Lnyb;->T(Ljava/lang/Object;I)Z

    move-result v12

    if-eqz v12, :cond_3

    invoke-static {v10}, Lnyb;->A(I)J

    move-result-wide v12

    invoke-static {v1, v12, v13}, Lnzi;->d(Ljava/lang/Object;J)I

    move-result v10

    invoke-virtual {v2, v11, v10}, Llzz;->x(II)V

    goto/16 :goto_3

    :pswitch_3a
    invoke-direct {v0, v1, v9}, Lnyb;->T(Ljava/lang/Object;I)Z

    move-result v12

    if-eqz v12, :cond_3

    invoke-static {v10}, Lnyb;->A(I)J

    move-result-wide v12

    invoke-static {v1, v12, v13}, Lnzi;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lnvt;

    invoke-virtual {v2, v11, v10}, Llzz;->h(ILnvt;)V

    goto/16 :goto_3

    :pswitch_3b
    invoke-direct {v0, v1, v9}, Lnyb;->T(Ljava/lang/Object;I)Z

    move-result v12

    if-eqz v12, :cond_3

    invoke-static {v10}, Lnyb;->A(I)J

    move-result-wide v12

    invoke-static {v1, v12, v13}, Lnzi;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    invoke-direct {v0, v9}, Lnyb;->D(I)Lnyo;

    move-result-object v12

    invoke-virtual {v2, v11, v10, v12}, Llzz;->q(ILjava/lang/Object;Lnyo;)V

    goto/16 :goto_3

    :pswitch_3c
    invoke-direct {v0, v1, v9}, Lnyb;->T(Ljava/lang/Object;I)Z

    move-result v12

    if-eqz v12, :cond_3

    invoke-static {v10}, Lnyb;->A(I)J

    move-result-wide v12

    invoke-static {v1, v12, v13}, Lnzi;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    invoke-static {v11, v10, v2}, Lnyb;->ad(ILjava/lang/Object;Llzz;)V

    goto/16 :goto_3

    :pswitch_3d
    invoke-direct {v0, v1, v9}, Lnyb;->T(Ljava/lang/Object;I)Z

    move-result v12

    if-eqz v12, :cond_3

    invoke-static {v10}, Lnyb;->A(I)J

    move-result-wide v12

    invoke-static {v1, v12, v13}, Lnzi;->w(Ljava/lang/Object;J)Z

    move-result v10

    invoke-virtual {v2, v11, v10}, Llzz;->g(IZ)V

    goto/16 :goto_3

    :pswitch_3e
    invoke-direct {v0, v1, v9}, Lnyb;->T(Ljava/lang/Object;I)Z

    move-result v12

    if-eqz v12, :cond_3

    invoke-static {v10}, Lnyb;->A(I)J

    move-result-wide v12

    invoke-static {v1, v12, v13}, Lnzi;->d(Ljava/lang/Object;J)I

    move-result v10

    invoke-virtual {v2, v11, v10}, Llzz;->k(II)V

    goto :goto_3

    :pswitch_3f
    invoke-direct {v0, v1, v9}, Lnyb;->T(Ljava/lang/Object;I)Z

    move-result v12

    if-eqz v12, :cond_3

    invoke-static {v10}, Lnyb;->A(I)J

    move-result-wide v12

    invoke-static {v1, v12, v13}, Lnzi;->f(Ljava/lang/Object;J)J

    move-result-wide v12

    invoke-virtual {v2, v11, v12, v13}, Llzz;->l(IJ)V

    goto :goto_3

    :pswitch_40
    invoke-direct {v0, v1, v9}, Lnyb;->T(Ljava/lang/Object;I)Z

    move-result v12

    if-eqz v12, :cond_3

    invoke-static {v10}, Lnyb;->A(I)J

    move-result-wide v12

    invoke-static {v1, v12, v13}, Lnzi;->d(Ljava/lang/Object;J)I

    move-result v10

    invoke-virtual {v2, v11, v10}, Llzz;->o(II)V

    goto :goto_3

    :pswitch_41
    invoke-direct {v0, v1, v9}, Lnyb;->T(Ljava/lang/Object;I)Z

    move-result v12

    if-eqz v12, :cond_3

    invoke-static {v10}, Lnyb;->A(I)J

    move-result-wide v12

    invoke-static {v1, v12, v13}, Lnzi;->f(Ljava/lang/Object;J)J

    move-result-wide v12

    invoke-virtual {v2, v11, v12, v13}, Llzz;->y(IJ)V

    goto :goto_3

    :pswitch_42
    invoke-direct {v0, v1, v9}, Lnyb;->T(Ljava/lang/Object;I)Z

    move-result v12

    if-eqz v12, :cond_3

    invoke-static {v10}, Lnyb;->A(I)J

    move-result-wide v12

    invoke-static {v1, v12, v13}, Lnzi;->f(Ljava/lang/Object;J)J

    move-result-wide v12

    invoke-virtual {v2, v11, v12, v13}, Llzz;->p(IJ)V

    goto :goto_3

    :pswitch_43
    invoke-direct {v0, v1, v9}, Lnyb;->T(Ljava/lang/Object;I)Z

    move-result v12

    if-eqz v12, :cond_3

    invoke-static {v10}, Lnyb;->A(I)J

    move-result-wide v12

    invoke-static {v1, v12, v13}, Lnzi;->c(Ljava/lang/Object;J)F

    move-result v10

    invoke-virtual {v2, v11, v10}, Llzz;->m(IF)V

    goto :goto_3

    :pswitch_44
    invoke-direct {v0, v1, v9}, Lnyb;->T(Ljava/lang/Object;I)Z

    move-result v12

    if-eqz v12, :cond_3

    invoke-static {v10}, Lnyb;->A(I)J

    move-result-wide v12

    invoke-static {v1, v12, v13}, Lnzi;->b(Ljava/lang/Object;J)D

    move-result-wide v12

    invoke-virtual {v2, v11, v12, v13}, Llzz;->i(ID)V

    :cond_3
    :goto_3
    add-int/lit8 v9, v9, 0x3

    goto/16 :goto_1

    :cond_4
    :goto_4
    if-eqz v7, :cond_6

    invoke-static {v2, v7}, Lkwp;->aA(Llzz;Ljava/util/Map$Entry;)V

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v7, v5

    check-cast v7, Ljava/util/Map$Entry;

    goto :goto_4

    :cond_5
    const/4 v7, 0x0

    goto :goto_4

    :cond_6
    invoke-static/range {p1 .. p2}, Lnyb;->ae(Ljava/lang/Object;Llzz;)V

    return-void

    :cond_7
    iget-boolean v3, v0, Lnyb;->h:Z

    if-eqz v3, :cond_8

    invoke-static/range {p1 .. p1}, Lkwp;->Y(Ljava/lang/Object;)Lnwj;

    move-result-object v3

    invoke-virtual {v3}, Lnwj;->h()Z

    move-result v7

    if-nez v7, :cond_8

    invoke-virtual {v3}, Lnwj;->d()Ljava/util/Iterator;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    goto :goto_5

    :cond_8
    const/4 v3, 0x0

    const/4 v7, 0x0

    :goto_5
    iget-object v8, v0, Lnyb;->c:[I

    array-length v8, v8

    sget-object v9, Lnyb;->b:Lsun/misc/Unsafe;

    const v10, 0xfffff

    const/4 v11, 0x0

    const v12, 0xfffff

    const/4 v13, 0x0

    :goto_6
    if-ge v11, v8, :cond_20

    invoke-direct {v0, v11}, Lnyb;->z(I)I

    move-result v14

    invoke-direct {v0, v11}, Lnyb;->p(I)I

    move-result v15

    invoke-static {v14}, Lnyb;->y(I)I

    move-result v4

    const/16 v6, 0x11

    if-gt v4, v6, :cond_a

    iget-object v6, v0, Lnyb;->c:[I

    add-int/lit8 v17, v11, 0x2

    aget v6, v6, v17

    and-int v5, v6, v10

    if-eq v5, v12, :cond_9

    int-to-long v12, v5

    invoke-virtual {v9, v1, v12, v13}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v13

    move v12, v5

    :cond_9
    ushr-int/lit8 v5, v6, 0x14

    const/4 v6, 0x1

    shl-int v5, v6, v5

    goto :goto_7

    :cond_a
    const/4 v5, 0x0

    :goto_7
    if-eqz v7, :cond_c

    invoke-static {v7}, Lkwp;->X(Ljava/util/Map$Entry;)I

    move-result v6

    if-gt v6, v15, :cond_c

    invoke-static {v2, v7}, Lkwp;->aA(Llzz;Ljava/util/Map$Entry;)V

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v7, v6

    check-cast v7, Ljava/util/Map$Entry;

    goto :goto_7

    :cond_b
    const/4 v7, 0x0

    goto :goto_7

    :cond_c
    move/from16 v18, v11

    invoke-static {v14}, Lnyb;->A(I)J

    move-result-wide v10

    packed-switch v4, :pswitch_data_1

    move/from16 v4, v18

    const/4 v14, 0x1

    const/16 v16, 0x0

    goto/16 :goto_8

    :pswitch_45
    move/from16 v4, v18

    invoke-direct {v0, v1, v15, v4}, Lnyb;->X(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_d

    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    invoke-direct {v0, v4}, Lnyb;->D(I)Lnyo;

    move-result-object v10

    invoke-virtual {v2, v15, v5, v10}, Llzz;->n(ILjava/lang/Object;Lnyo;)V

    const/4 v14, 0x1

    const/16 v16, 0x0

    goto/16 :goto_8

    :cond_d
    const/4 v14, 0x1

    const/16 v16, 0x0

    goto/16 :goto_8

    :pswitch_46
    move/from16 v4, v18

    invoke-direct {v0, v1, v15, v4}, Lnyb;->X(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_e

    invoke-static {v1, v10, v11}, Lnyb;->B(Ljava/lang/Object;J)J

    move-result-wide v10

    invoke-virtual {v2, v15, v10, v11}, Llzz;->v(IJ)V

    const/4 v14, 0x1

    const/16 v16, 0x0

    goto/16 :goto_8

    :cond_e
    const/4 v14, 0x1

    const/16 v16, 0x0

    goto/16 :goto_8

    :pswitch_47
    move/from16 v4, v18

    invoke-direct {v0, v1, v15, v4}, Lnyb;->X(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_f

    invoke-static {v1, v10, v11}, Lnyb;->q(Ljava/lang/Object;J)I

    move-result v5

    invoke-virtual {v2, v15, v5}, Llzz;->u(II)V

    const/4 v14, 0x1

    const/16 v16, 0x0

    goto/16 :goto_8

    :cond_f
    const/4 v14, 0x1

    const/16 v16, 0x0

    goto/16 :goto_8

    :pswitch_48
    move/from16 v4, v18

    invoke-direct {v0, v1, v15, v4}, Lnyb;->X(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_10

    invoke-static {v1, v10, v11}, Lnyb;->B(Ljava/lang/Object;J)J

    move-result-wide v10

    invoke-virtual {v2, v15, v10, v11}, Llzz;->t(IJ)V

    const/4 v14, 0x1

    const/16 v16, 0x0

    goto/16 :goto_8

    :cond_10
    const/4 v14, 0x1

    const/16 v16, 0x0

    goto/16 :goto_8

    :pswitch_49
    move/from16 v4, v18

    invoke-direct {v0, v1, v15, v4}, Lnyb;->X(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_11

    invoke-static {v1, v10, v11}, Lnyb;->q(Ljava/lang/Object;J)I

    move-result v5

    invoke-virtual {v2, v15, v5}, Llzz;->s(II)V

    const/4 v14, 0x1

    const/16 v16, 0x0

    goto/16 :goto_8

    :cond_11
    const/4 v14, 0x1

    const/16 v16, 0x0

    goto/16 :goto_8

    :pswitch_4a
    move/from16 v4, v18

    invoke-direct {v0, v1, v15, v4}, Lnyb;->X(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_12

    invoke-static {v1, v10, v11}, Lnyb;->q(Ljava/lang/Object;J)I

    move-result v5

    invoke-virtual {v2, v15, v5}, Llzz;->j(II)V

    const/4 v14, 0x1

    const/16 v16, 0x0

    goto/16 :goto_8

    :cond_12
    const/4 v14, 0x1

    const/16 v16, 0x0

    goto/16 :goto_8

    :pswitch_4b
    move/from16 v4, v18

    invoke-direct {v0, v1, v15, v4}, Lnyb;->X(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_13

    invoke-static {v1, v10, v11}, Lnyb;->q(Ljava/lang/Object;J)I

    move-result v5

    invoke-virtual {v2, v15, v5}, Llzz;->x(II)V

    const/4 v14, 0x1

    const/16 v16, 0x0

    goto/16 :goto_8

    :cond_13
    const/4 v14, 0x1

    const/16 v16, 0x0

    goto/16 :goto_8

    :pswitch_4c
    move/from16 v4, v18

    invoke-direct {v0, v1, v15, v4}, Lnyb;->X(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_14

    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lnvt;

    invoke-virtual {v2, v15, v5}, Llzz;->h(ILnvt;)V

    const/4 v14, 0x1

    const/16 v16, 0x0

    goto/16 :goto_8

    :cond_14
    const/4 v14, 0x1

    const/16 v16, 0x0

    goto/16 :goto_8

    :pswitch_4d
    move/from16 v4, v18

    invoke-direct {v0, v1, v15, v4}, Lnyb;->X(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_15

    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    invoke-direct {v0, v4}, Lnyb;->D(I)Lnyo;

    move-result-object v10

    invoke-virtual {v2, v15, v5, v10}, Llzz;->q(ILjava/lang/Object;Lnyo;)V

    const/4 v14, 0x1

    const/16 v16, 0x0

    goto/16 :goto_8

    :cond_15
    const/4 v14, 0x1

    const/16 v16, 0x0

    goto/16 :goto_8

    :pswitch_4e
    move/from16 v4, v18

    invoke-direct {v0, v1, v15, v4}, Lnyb;->X(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_16

    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v15, v5, v2}, Lnyb;->ad(ILjava/lang/Object;Llzz;)V

    const/4 v14, 0x1

    const/16 v16, 0x0

    goto/16 :goto_8

    :cond_16
    const/4 v14, 0x1

    const/16 v16, 0x0

    goto/16 :goto_8

    :pswitch_4f
    move/from16 v4, v18

    invoke-direct {v0, v1, v15, v4}, Lnyb;->X(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_17

    invoke-static {v1, v10, v11}, Lnyb;->Y(Ljava/lang/Object;J)Z

    move-result v5

    invoke-virtual {v2, v15, v5}, Llzz;->g(IZ)V

    const/4 v14, 0x1

    const/16 v16, 0x0

    goto/16 :goto_8

    :cond_17
    const/4 v14, 0x1

    const/16 v16, 0x0

    goto/16 :goto_8

    :pswitch_50
    move/from16 v4, v18

    invoke-direct {v0, v1, v15, v4}, Lnyb;->X(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_18

    invoke-static {v1, v10, v11}, Lnyb;->q(Ljava/lang/Object;J)I

    move-result v5

    invoke-virtual {v2, v15, v5}, Llzz;->k(II)V

    const/4 v14, 0x1

    const/16 v16, 0x0

    goto/16 :goto_8

    :cond_18
    const/4 v14, 0x1

    const/16 v16, 0x0

    goto/16 :goto_8

    :pswitch_51
    move/from16 v4, v18

    invoke-direct {v0, v1, v15, v4}, Lnyb;->X(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_19

    invoke-static {v1, v10, v11}, Lnyb;->B(Ljava/lang/Object;J)J

    move-result-wide v10

    invoke-virtual {v2, v15, v10, v11}, Llzz;->l(IJ)V

    const/4 v14, 0x1

    const/16 v16, 0x0

    goto/16 :goto_8

    :cond_19
    const/4 v14, 0x1

    const/16 v16, 0x0

    goto/16 :goto_8

    :pswitch_52
    move/from16 v4, v18

    invoke-direct {v0, v1, v15, v4}, Lnyb;->X(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_1a

    invoke-static {v1, v10, v11}, Lnyb;->q(Ljava/lang/Object;J)I

    move-result v5

    invoke-virtual {v2, v15, v5}, Llzz;->o(II)V

    const/4 v14, 0x1

    const/16 v16, 0x0

    goto/16 :goto_8

    :cond_1a
    const/4 v14, 0x1

    const/16 v16, 0x0

    goto/16 :goto_8

    :pswitch_53
    move/from16 v4, v18

    invoke-direct {v0, v1, v15, v4}, Lnyb;->X(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_1b

    invoke-static {v1, v10, v11}, Lnyb;->B(Ljava/lang/Object;J)J

    move-result-wide v10

    invoke-virtual {v2, v15, v10, v11}, Llzz;->y(IJ)V

    const/4 v14, 0x1

    const/16 v16, 0x0

    goto/16 :goto_8

    :cond_1b
    const/4 v14, 0x1

    const/16 v16, 0x0

    goto/16 :goto_8

    :pswitch_54
    move/from16 v4, v18

    invoke-direct {v0, v1, v15, v4}, Lnyb;->X(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_1c

    invoke-static {v1, v10, v11}, Lnyb;->B(Ljava/lang/Object;J)J

    move-result-wide v10

    invoke-virtual {v2, v15, v10, v11}, Llzz;->p(IJ)V

    const/4 v14, 0x1

    const/16 v16, 0x0

    goto/16 :goto_8

    :cond_1c
    const/4 v14, 0x1

    const/16 v16, 0x0

    goto/16 :goto_8

    :pswitch_55
    move/from16 v4, v18

    invoke-direct {v0, v1, v15, v4}, Lnyb;->X(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_1d

    invoke-static {v1, v10, v11}, Lnyb;->o(Ljava/lang/Object;J)F

    move-result v5

    invoke-virtual {v2, v15, v5}, Llzz;->m(IF)V

    const/4 v14, 0x1

    const/16 v16, 0x0

    goto/16 :goto_8

    :cond_1d
    const/4 v14, 0x1

    const/16 v16, 0x0

    goto/16 :goto_8

    :pswitch_56
    move/from16 v4, v18

    invoke-direct {v0, v1, v15, v4}, Lnyb;->X(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_1e

    invoke-static {v1, v10, v11}, Lnyb;->n(Ljava/lang/Object;J)D

    move-result-wide v10

    invoke-virtual {v2, v15, v10, v11}, Llzz;->i(ID)V

    const/4 v14, 0x1

    const/16 v16, 0x0

    goto/16 :goto_8

    :cond_1e
    const/4 v14, 0x1

    const/16 v16, 0x0

    goto/16 :goto_8

    :pswitch_57
    move/from16 v4, v18

    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    invoke-direct {v0, v2, v15, v5, v4}, Lnyb;->ac(Llzz;ILjava/lang/Object;I)V

    const/4 v14, 0x1

    const/16 v16, 0x0

    goto/16 :goto_8

    :pswitch_58
    move/from16 v4, v18

    invoke-direct {v0, v4}, Lnyb;->p(I)I

    move-result v5

    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-direct {v0, v4}, Lnyb;->D(I)Lnyo;

    move-result-object v11

    invoke-static {v5, v10, v2, v11}, Lnyp;->K(ILjava/util/List;Llzz;Lnyo;)V

    const/4 v14, 0x1

    const/16 v16, 0x0

    goto/16 :goto_8

    :pswitch_59
    move/from16 v4, v18

    invoke-direct {v0, v4}, Lnyb;->p(I)I

    move-result v5

    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    const/4 v14, 0x1

    invoke-static {v5, v10, v2, v14}, Lnyp;->R(ILjava/util/List;Llzz;Z)V

    const/16 v16, 0x0

    goto/16 :goto_8

    :pswitch_5a
    move/from16 v4, v18

    const/4 v14, 0x1

    invoke-direct {v0, v4}, Lnyb;->p(I)I

    move-result v5

    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-static {v5, v10, v2, v14}, Lnyp;->Q(ILjava/util/List;Llzz;Z)V

    const/16 v16, 0x0

    goto/16 :goto_8

    :pswitch_5b
    move/from16 v4, v18

    const/4 v14, 0x1

    invoke-direct {v0, v4}, Lnyb;->p(I)I

    move-result v5

    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-static {v5, v10, v2, v14}, Lnyp;->P(ILjava/util/List;Llzz;Z)V

    const/16 v16, 0x0

    goto/16 :goto_8

    :pswitch_5c
    move/from16 v4, v18

    const/4 v14, 0x1

    invoke-direct {v0, v4}, Lnyb;->p(I)I

    move-result v5

    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-static {v5, v10, v2, v14}, Lnyp;->O(ILjava/util/List;Llzz;Z)V

    const/16 v16, 0x0

    goto/16 :goto_8

    :pswitch_5d
    move/from16 v4, v18

    const/4 v14, 0x1

    invoke-direct {v0, v4}, Lnyb;->p(I)I

    move-result v5

    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-static {v5, v10, v2, v14}, Lnyp;->G(ILjava/util/List;Llzz;Z)V

    const/16 v16, 0x0

    goto/16 :goto_8

    :pswitch_5e
    move/from16 v4, v18

    const/4 v14, 0x1

    invoke-direct {v0, v4}, Lnyb;->p(I)I

    move-result v5

    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-static {v5, v10, v2, v14}, Lnyp;->T(ILjava/util/List;Llzz;Z)V

    const/16 v16, 0x0

    goto/16 :goto_8

    :pswitch_5f
    move/from16 v4, v18

    const/4 v14, 0x1

    invoke-direct {v0, v4}, Lnyb;->p(I)I

    move-result v5

    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-static {v5, v10, v2, v14}, Lnyp;->D(ILjava/util/List;Llzz;Z)V

    const/16 v16, 0x0

    goto/16 :goto_8

    :pswitch_60
    move/from16 v4, v18

    const/4 v14, 0x1

    invoke-direct {v0, v4}, Lnyb;->p(I)I

    move-result v5

    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-static {v5, v10, v2, v14}, Lnyp;->H(ILjava/util/List;Llzz;Z)V

    const/16 v16, 0x0

    goto/16 :goto_8

    :pswitch_61
    move/from16 v4, v18

    const/4 v14, 0x1

    invoke-direct {v0, v4}, Lnyb;->p(I)I

    move-result v5

    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-static {v5, v10, v2, v14}, Lnyp;->I(ILjava/util/List;Llzz;Z)V

    const/16 v16, 0x0

    goto/16 :goto_8

    :pswitch_62
    move/from16 v4, v18

    const/4 v14, 0x1

    invoke-direct {v0, v4}, Lnyb;->p(I)I

    move-result v5

    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-static {v5, v10, v2, v14}, Lnyp;->L(ILjava/util/List;Llzz;Z)V

    const/16 v16, 0x0

    goto/16 :goto_8

    :pswitch_63
    move/from16 v4, v18

    const/4 v14, 0x1

    invoke-direct {v0, v4}, Lnyb;->p(I)I

    move-result v5

    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-static {v5, v10, v2, v14}, Lnyp;->U(ILjava/util/List;Llzz;Z)V

    const/16 v16, 0x0

    goto/16 :goto_8

    :pswitch_64
    move/from16 v4, v18

    const/4 v14, 0x1

    invoke-direct {v0, v4}, Lnyb;->p(I)I

    move-result v5

    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-static {v5, v10, v2, v14}, Lnyp;->M(ILjava/util/List;Llzz;Z)V

    const/16 v16, 0x0

    goto/16 :goto_8

    :pswitch_65
    move/from16 v4, v18

    const/4 v14, 0x1

    invoke-direct {v0, v4}, Lnyb;->p(I)I

    move-result v5

    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-static {v5, v10, v2, v14}, Lnyp;->J(ILjava/util/List;Llzz;Z)V

    const/16 v16, 0x0

    goto/16 :goto_8

    :pswitch_66
    move/from16 v4, v18

    const/4 v14, 0x1

    invoke-direct {v0, v4}, Lnyb;->p(I)I

    move-result v5

    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-static {v5, v10, v2, v14}, Lnyp;->F(ILjava/util/List;Llzz;Z)V

    const/16 v16, 0x0

    goto/16 :goto_8

    :pswitch_67
    move/from16 v4, v18

    const/4 v14, 0x1

    invoke-direct {v0, v4}, Lnyb;->p(I)I

    move-result v5

    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    const/4 v15, 0x0

    invoke-static {v5, v10, v2, v15}, Lnyp;->R(ILjava/util/List;Llzz;Z)V

    const/16 v16, 0x0

    goto/16 :goto_8

    :pswitch_68
    move/from16 v4, v18

    const/4 v14, 0x1

    const/4 v15, 0x0

    invoke-direct {v0, v4}, Lnyb;->p(I)I

    move-result v5

    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-static {v5, v10, v2, v15}, Lnyp;->Q(ILjava/util/List;Llzz;Z)V

    const/16 v16, 0x0

    goto/16 :goto_8

    :pswitch_69
    move/from16 v4, v18

    const/4 v14, 0x1

    const/4 v15, 0x0

    invoke-direct {v0, v4}, Lnyb;->p(I)I

    move-result v5

    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-static {v5, v10, v2, v15}, Lnyp;->P(ILjava/util/List;Llzz;Z)V

    const/16 v16, 0x0

    goto/16 :goto_8

    :pswitch_6a
    move/from16 v4, v18

    const/4 v14, 0x1

    const/4 v15, 0x0

    invoke-direct {v0, v4}, Lnyb;->p(I)I

    move-result v5

    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-static {v5, v10, v2, v15}, Lnyp;->O(ILjava/util/List;Llzz;Z)V

    const/16 v16, 0x0

    goto/16 :goto_8

    :pswitch_6b
    move/from16 v4, v18

    const/4 v14, 0x1

    const/4 v15, 0x0

    invoke-direct {v0, v4}, Lnyb;->p(I)I

    move-result v5

    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-static {v5, v10, v2, v15}, Lnyp;->G(ILjava/util/List;Llzz;Z)V

    const/16 v16, 0x0

    goto/16 :goto_8

    :pswitch_6c
    move/from16 v4, v18

    const/4 v14, 0x1

    const/4 v15, 0x0

    invoke-direct {v0, v4}, Lnyb;->p(I)I

    move-result v5

    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-static {v5, v10, v2, v15}, Lnyp;->T(ILjava/util/List;Llzz;Z)V

    const/16 v16, 0x0

    goto/16 :goto_8

    :pswitch_6d
    move/from16 v4, v18

    const/4 v14, 0x1

    invoke-direct {v0, v4}, Lnyb;->p(I)I

    move-result v5

    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-static {v5, v10, v2}, Lnyp;->E(ILjava/util/List;Llzz;)V

    const/16 v16, 0x0

    goto/16 :goto_8

    :pswitch_6e
    move/from16 v4, v18

    const/4 v14, 0x1

    invoke-direct {v0, v4}, Lnyb;->p(I)I

    move-result v5

    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-direct {v0, v4}, Lnyb;->D(I)Lnyo;

    move-result-object v11

    invoke-static {v5, v10, v2, v11}, Lnyp;->N(ILjava/util/List;Llzz;Lnyo;)V

    const/16 v16, 0x0

    goto/16 :goto_8

    :pswitch_6f
    move/from16 v4, v18

    const/4 v14, 0x1

    invoke-direct {v0, v4}, Lnyb;->p(I)I

    move-result v5

    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-static {v5, v10, v2}, Lnyp;->S(ILjava/util/List;Llzz;)V

    const/16 v16, 0x0

    goto/16 :goto_8

    :pswitch_70
    move/from16 v4, v18

    const/4 v14, 0x1

    invoke-direct {v0, v4}, Lnyb;->p(I)I

    move-result v5

    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    const/4 v15, 0x0

    invoke-static {v5, v10, v2, v15}, Lnyp;->D(ILjava/util/List;Llzz;Z)V

    const/16 v16, 0x0

    goto/16 :goto_8

    :pswitch_71
    move/from16 v4, v18

    const/4 v14, 0x1

    const/4 v15, 0x0

    invoke-direct {v0, v4}, Lnyb;->p(I)I

    move-result v5

    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-static {v5, v10, v2, v15}, Lnyp;->H(ILjava/util/List;Llzz;Z)V

    const/16 v16, 0x0

    goto/16 :goto_8

    :pswitch_72
    move/from16 v4, v18

    const/4 v14, 0x1

    const/4 v15, 0x0

    invoke-direct {v0, v4}, Lnyb;->p(I)I

    move-result v5

    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-static {v5, v10, v2, v15}, Lnyp;->I(ILjava/util/List;Llzz;Z)V

    const/16 v16, 0x0

    goto/16 :goto_8

    :pswitch_73
    move/from16 v4, v18

    const/4 v14, 0x1

    const/4 v15, 0x0

    invoke-direct {v0, v4}, Lnyb;->p(I)I

    move-result v5

    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-static {v5, v10, v2, v15}, Lnyp;->L(ILjava/util/List;Llzz;Z)V

    const/16 v16, 0x0

    goto/16 :goto_8

    :pswitch_74
    move/from16 v4, v18

    const/4 v14, 0x1

    const/4 v15, 0x0

    invoke-direct {v0, v4}, Lnyb;->p(I)I

    move-result v5

    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-static {v5, v10, v2, v15}, Lnyp;->U(ILjava/util/List;Llzz;Z)V

    const/16 v16, 0x0

    goto/16 :goto_8

    :pswitch_75
    move/from16 v4, v18

    const/4 v14, 0x1

    const/4 v15, 0x0

    invoke-direct {v0, v4}, Lnyb;->p(I)I

    move-result v5

    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-static {v5, v10, v2, v15}, Lnyp;->M(ILjava/util/List;Llzz;Z)V

    const/16 v16, 0x0

    goto/16 :goto_8

    :pswitch_76
    move/from16 v4, v18

    const/4 v14, 0x1

    const/4 v15, 0x0

    invoke-direct {v0, v4}, Lnyb;->p(I)I

    move-result v5

    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-static {v5, v10, v2, v15}, Lnyp;->J(ILjava/util/List;Llzz;Z)V

    const/16 v16, 0x0

    goto/16 :goto_8

    :pswitch_77
    move/from16 v4, v18

    const/4 v14, 0x1

    const/4 v15, 0x0

    invoke-direct {v0, v4}, Lnyb;->p(I)I

    move-result v5

    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-static {v5, v10, v2, v15}, Lnyp;->F(ILjava/util/List;Llzz;Z)V

    const/16 v16, 0x0

    goto/16 :goto_8

    :pswitch_78
    move/from16 v4, v18

    const/4 v14, 0x1

    const/16 v16, 0x0

    and-int/2addr v5, v13

    if-eqz v5, :cond_1f

    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    invoke-direct {v0, v4}, Lnyb;->D(I)Lnyo;

    move-result-object v10

    invoke-virtual {v2, v15, v5, v10}, Llzz;->n(ILjava/lang/Object;Lnyo;)V

    goto/16 :goto_8

    :pswitch_79
    move/from16 v4, v18

    const/4 v14, 0x1

    const/16 v16, 0x0

    and-int/2addr v5, v13

    if-eqz v5, :cond_1f

    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v10

    invoke-virtual {v2, v15, v10, v11}, Llzz;->v(IJ)V

    goto/16 :goto_8

    :pswitch_7a
    move/from16 v4, v18

    const/4 v14, 0x1

    const/16 v16, 0x0

    and-int/2addr v5, v13

    if-eqz v5, :cond_1f

    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v5

    invoke-virtual {v2, v15, v5}, Llzz;->u(II)V

    goto/16 :goto_8

    :pswitch_7b
    move/from16 v4, v18

    const/4 v14, 0x1

    const/16 v16, 0x0

    and-int/2addr v5, v13

    if-eqz v5, :cond_1f

    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v10

    invoke-virtual {v2, v15, v10, v11}, Llzz;->t(IJ)V

    goto/16 :goto_8

    :pswitch_7c
    move/from16 v4, v18

    const/4 v14, 0x1

    const/16 v16, 0x0

    and-int/2addr v5, v13

    if-eqz v5, :cond_1f

    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v5

    invoke-virtual {v2, v15, v5}, Llzz;->s(II)V

    goto/16 :goto_8

    :pswitch_7d
    move/from16 v4, v18

    const/4 v14, 0x1

    const/16 v16, 0x0

    and-int/2addr v5, v13

    if-eqz v5, :cond_1f

    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v5

    invoke-virtual {v2, v15, v5}, Llzz;->j(II)V

    goto/16 :goto_8

    :pswitch_7e
    move/from16 v4, v18

    const/4 v14, 0x1

    const/16 v16, 0x0

    and-int/2addr v5, v13

    if-eqz v5, :cond_1f

    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v5

    invoke-virtual {v2, v15, v5}, Llzz;->x(II)V

    goto/16 :goto_8

    :pswitch_7f
    move/from16 v4, v18

    const/4 v14, 0x1

    const/16 v16, 0x0

    and-int/2addr v5, v13

    if-eqz v5, :cond_1f

    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lnvt;

    invoke-virtual {v2, v15, v5}, Llzz;->h(ILnvt;)V

    goto/16 :goto_8

    :pswitch_80
    move/from16 v4, v18

    const/4 v14, 0x1

    const/16 v16, 0x0

    and-int/2addr v5, v13

    if-eqz v5, :cond_1f

    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    invoke-direct {v0, v4}, Lnyb;->D(I)Lnyo;

    move-result-object v10

    invoke-virtual {v2, v15, v5, v10}, Llzz;->q(ILjava/lang/Object;Lnyo;)V

    goto/16 :goto_8

    :pswitch_81
    move/from16 v4, v18

    const/4 v14, 0x1

    const/16 v16, 0x0

    and-int/2addr v5, v13

    if-eqz v5, :cond_1f

    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v15, v5, v2}, Lnyb;->ad(ILjava/lang/Object;Llzz;)V

    goto/16 :goto_8

    :pswitch_82
    move/from16 v4, v18

    const/4 v14, 0x1

    const/16 v16, 0x0

    and-int/2addr v5, v13

    if-eqz v5, :cond_1f

    invoke-static {v1, v10, v11}, Lnzi;->w(Ljava/lang/Object;J)Z

    move-result v5

    invoke-virtual {v2, v15, v5}, Llzz;->g(IZ)V

    goto/16 :goto_8

    :pswitch_83
    move/from16 v4, v18

    const/4 v14, 0x1

    const/16 v16, 0x0

    and-int/2addr v5, v13

    if-eqz v5, :cond_1f

    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v5

    invoke-virtual {v2, v15, v5}, Llzz;->k(II)V

    goto :goto_8

    :pswitch_84
    move/from16 v4, v18

    const/4 v14, 0x1

    const/16 v16, 0x0

    and-int/2addr v5, v13

    if-eqz v5, :cond_1f

    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v10

    invoke-virtual {v2, v15, v10, v11}, Llzz;->l(IJ)V

    goto :goto_8

    :pswitch_85
    move/from16 v4, v18

    const/4 v14, 0x1

    const/16 v16, 0x0

    and-int/2addr v5, v13

    if-eqz v5, :cond_1f

    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v5

    invoke-virtual {v2, v15, v5}, Llzz;->o(II)V

    goto :goto_8

    :pswitch_86
    move/from16 v4, v18

    const/4 v14, 0x1

    const/16 v16, 0x0

    and-int/2addr v5, v13

    if-eqz v5, :cond_1f

    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v10

    invoke-virtual {v2, v15, v10, v11}, Llzz;->y(IJ)V

    goto :goto_8

    :pswitch_87
    move/from16 v4, v18

    const/4 v14, 0x1

    const/16 v16, 0x0

    and-int/2addr v5, v13

    if-eqz v5, :cond_1f

    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v10

    invoke-virtual {v2, v15, v10, v11}, Llzz;->p(IJ)V

    goto :goto_8

    :pswitch_88
    move/from16 v4, v18

    const/4 v14, 0x1

    const/16 v16, 0x0

    and-int/2addr v5, v13

    if-eqz v5, :cond_1f

    invoke-static {v1, v10, v11}, Lnzi;->c(Ljava/lang/Object;J)F

    move-result v5

    invoke-virtual {v2, v15, v5}, Llzz;->m(IF)V

    goto :goto_8

    :pswitch_89
    move/from16 v4, v18

    const/4 v14, 0x1

    const/16 v16, 0x0

    and-int/2addr v5, v13

    if-eqz v5, :cond_1f

    invoke-static {v1, v10, v11}, Lnzi;->b(Ljava/lang/Object;J)D

    move-result-wide v10

    invoke-virtual {v2, v15, v10, v11}, Llzz;->i(ID)V

    :cond_1f
    :goto_8
    add-int/lit8 v11, v4, 0x3

    const/4 v5, 0x1

    const/4 v6, 0x0

    const v10, 0xfffff

    goto/16 :goto_6

    :cond_20
    :goto_9
    if-eqz v7, :cond_22

    invoke-static {v2, v7}, Lkwp;->aA(Llzz;Ljava/util/Map$Entry;)V

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_21

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v7, v4

    check-cast v7, Ljava/util/Map$Entry;

    goto :goto_9

    :cond_21
    const/4 v7, 0x0

    goto :goto_9

    :cond_22
    invoke-static/range {p1 .. p2}, Lnyb;->ae(Ljava/lang/Object;Llzz;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
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

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_89
        :pswitch_88
        :pswitch_87
        :pswitch_86
        :pswitch_85
        :pswitch_84
        :pswitch_83
        :pswitch_82
        :pswitch_81
        :pswitch_80
        :pswitch_7f
        :pswitch_7e
        :pswitch_7d
        :pswitch_7c
        :pswitch_7b
        :pswitch_7a
        :pswitch_79
        :pswitch_78
        :pswitch_77
        :pswitch_76
        :pswitch_75
        :pswitch_74
        :pswitch_73
        :pswitch_72
        :pswitch_71
        :pswitch_70
        :pswitch_6f
        :pswitch_6e
        :pswitch_6d
        :pswitch_6c
        :pswitch_6b
        :pswitch_6a
        :pswitch_69
        :pswitch_68
        :pswitch_67
        :pswitch_66
        :pswitch_65
        :pswitch_64
        :pswitch_63
        :pswitch_62
        :pswitch_61
        :pswitch_60
        :pswitch_5f
        :pswitch_5e
        :pswitch_5d
        :pswitch_5c
        :pswitch_5b
        :pswitch_5a
        :pswitch_59
        :pswitch_58
        :pswitch_57
        :pswitch_56
        :pswitch_55
        :pswitch_54
        :pswitch_53
        :pswitch_52
        :pswitch_51
        :pswitch_50
        :pswitch_4f
        :pswitch_4e
        :pswitch_4d
        :pswitch_4c
        :pswitch_4b
        :pswitch_4a
        :pswitch_49
        :pswitch_48
        :pswitch_47
        :pswitch_46
        :pswitch_45
    .end packed-switch
.end method
