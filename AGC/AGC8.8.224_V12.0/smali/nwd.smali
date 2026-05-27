.class public abstract Lnwd;
.super Lnvm;


# static fields
.field private static final a:Ljava/util/logging/Logger;

.field public static final e:Z


# instance fields
.field public f:Llzz;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lnwd;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lnwd;->a:Ljava/util/logging/Logger;

    sget-boolean v0, Lnzi;->b:Z

    sput-boolean v0, Lnwd;->e:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lnvm;-><init>()V

    return-void
.end method

.method public static G(ILnvt;)I
    .locals 0

    invoke-static {p0}, Lnwd;->Z(I)I

    move-result p0

    invoke-static {p1}, Lnwd;->H(Lnvt;)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static H(Lnvt;)I
    .locals 0

    invoke-virtual {p0}, Lnvt;->d()I

    move-result p0

    invoke-static {p0}, Lnwd;->P(I)I

    move-result p0

    return p0
.end method

.method public static I(II)I
    .locals 0

    invoke-static {p0}, Lnwd;->Z(I)I

    move-result p0

    invoke-static {p1}, Lnwd;->L(I)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method static J(ILnxy;Lnyo;)I
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    check-cast p1, Lnve;

    invoke-virtual {p1, p2}, Lnve;->G(Lnyo;)I

    move-result p1

    invoke-static {p0}, Lnwd;->Z(I)I

    move-result p0

    add-int/2addr p0, p0

    add-int/2addr p0, p1

    return p0
.end method

.method public static K(II)I
    .locals 0

    invoke-static {p0}, Lnwd;->Z(I)I

    move-result p0

    invoke-static {p1}, Lnwd;->L(I)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static L(I)I
    .locals 0

    if-ltz p0, :cond_0

    invoke-static {p0}, Lnwd;->ab(I)I

    move-result p0

    return p0

    :cond_0
    const/16 p0, 0xa

    return p0
.end method

.method public static M(IJ)I
    .locals 0

    invoke-static {p0}, Lnwd;->Z(I)I

    move-result p0

    invoke-static {p1, p2}, Lnwd;->ad(J)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static N(ILnxj;)I
    .locals 0

    invoke-static {p0}, Lnwd;->Z(I)I

    move-result p0

    invoke-static {p1}, Lnwd;->O(Lnxj;)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static O(Lnxj;)I
    .locals 1

    iget-object v0, p0, Lnxj;->b:Lnvt;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lnxj;->b:Lnvt;

    invoke-virtual {p0}, Lnvt;->d()I

    move-result p0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lnxj;->a:Lnxy;

    if-eqz v0, :cond_1

    iget-object p0, p0, Lnxj;->a:Lnxy;

    invoke-interface {p0}, Lnxy;->N()I

    move-result p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    invoke-static {p0}, Lnwd;->P(I)I

    move-result p0

    return p0
.end method

.method public static P(I)I
    .locals 1

    invoke-static {p0}, Lnwd;->ab(I)I

    move-result v0

    add-int/2addr v0, p0

    return v0
.end method

.method public static Q(Lnxy;)I
    .locals 0

    invoke-interface {p0}, Lnxy;->N()I

    move-result p0

    invoke-static {p0}, Lnwd;->P(I)I

    move-result p0

    return p0
.end method

.method static R(Lnxy;Lnyo;)I
    .locals 0

    check-cast p0, Lnve;

    invoke-virtual {p0, p1}, Lnve;->G(Lnyo;)I

    move-result p0

    invoke-static {p0}, Lnwd;->P(I)I

    move-result p0

    return p0
.end method

.method public static S(I)I
    .locals 1

    const/16 v0, 0x1000

    if-le p0, v0, :cond_0

    return v0

    :cond_0
    return p0
.end method

.method public static T(II)I
    .locals 0

    invoke-static {p0}, Lnwd;->Z(I)I

    move-result p0

    invoke-static {p1}, Lnwd;->U(I)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static U(I)I
    .locals 0

    invoke-static {p0}, Lnwd;->ae(I)I

    move-result p0

    invoke-static {p0}, Lnwd;->ab(I)I

    move-result p0

    return p0
.end method

.method public static V(IJ)I
    .locals 0

    invoke-static {p0}, Lnwd;->Z(I)I

    move-result p0

    invoke-static {p1, p2}, Lnwd;->W(J)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static W(J)I
    .locals 0

    invoke-static {p0, p1}, Lnwd;->af(J)J

    move-result-wide p0

    invoke-static {p0, p1}, Lnwd;->ad(J)I

    move-result p0

    return p0
.end method

.method public static X(ILjava/lang/String;)I
    .locals 0

    invoke-static {p0}, Lnwd;->Z(I)I

    move-result p0

    invoke-static {p1}, Lnwd;->Y(Ljava/lang/String;)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static Y(Ljava/lang/String;)I
    .locals 1

    :try_start_0
    invoke-static {p0}, Lnzk;->b(Ljava/lang/CharSequence;)I

    move-result p0
    :try_end_0
    .catch Lnzj; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v0, Lnxb;->a:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    array-length p0, p0

    :goto_0
    invoke-static {p0}, Lnwd;->P(I)I

    move-result p0

    return p0
.end method

.method public static Z(I)I
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lnzn;->c(II)I

    move-result p0

    invoke-static {p0}, Lnwd;->ab(I)I

    move-result p0

    return p0
.end method

.method public static aa(II)I
    .locals 0

    invoke-static {p0}, Lnwd;->Z(I)I

    move-result p0

    invoke-static {p1}, Lnwd;->ab(I)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static ab(I)I
    .locals 1

    and-int/lit8 v0, p0, -0x80

    if-nez v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    and-int/lit16 v0, p0, -0x4000

    if-nez v0, :cond_1

    const/4 p0, 0x2

    return p0

    :cond_1
    const/high16 v0, -0x200000

    and-int/2addr v0, p0

    if-nez v0, :cond_2

    const/4 p0, 0x3

    return p0

    :cond_2
    const/high16 v0, -0x10000000

    and-int/2addr p0, v0

    if-nez p0, :cond_3

    const/4 p0, 0x4

    return p0

    :cond_3
    const/4 p0, 0x5

    return p0
.end method

.method public static ac(IJ)I
    .locals 0

    invoke-static {p0}, Lnwd;->Z(I)I

    move-result p0

    invoke-static {p1, p2}, Lnwd;->ad(J)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static ad(J)I
    .locals 7

    const-wide/16 v0, -0x80

    and-long/2addr v0, p0

    const/4 v2, 0x1

    const-wide/16 v3, 0x0

    cmp-long v5, v0, v3

    if-nez v5, :cond_0

    return v2

    :cond_0
    cmp-long v0, p0, v3

    if-gez v0, :cond_1

    const/16 p0, 0xa

    return p0

    :cond_1
    const-wide v0, -0x800000000L

    and-long/2addr v0, p0

    cmp-long v5, v0, v3

    if-eqz v5, :cond_2

    const/16 v0, 0x1c

    ushr-long/2addr p0, v0

    const/4 v0, 0x6

    goto :goto_0

    :cond_2
    const/4 v0, 0x2

    :goto_0
    const-wide/32 v5, -0x200000

    and-long/2addr v5, p0

    cmp-long v1, v5, v3

    if-eqz v1, :cond_3

    const/16 v1, 0xe

    ushr-long/2addr p0, v1

    add-int/lit8 v0, v0, 0x2

    :cond_3
    const-wide/16 v5, -0x4000

    and-long/2addr p0, v5

    cmp-long v1, p0, v3

    if-eqz v1, :cond_4

    add-int/2addr v0, v2

    :cond_4
    return v0
.end method

.method public static ae(I)I
    .locals 1

    add-int v0, p0, p0

    shr-int/lit8 p0, p0, 0x1f

    xor-int/2addr p0, v0

    return p0
.end method

.method public static af(J)J
    .locals 3

    add-long v0, p0, p0

    const/16 v2, 0x3f

    shr-long/2addr p0, v2

    xor-long/2addr p0, v0

    return-wide p0
.end method

.method public static ag([B)Lnwd;
    .locals 2

    array-length v0, p0

    new-instance v1, Lnwb;

    invoke-direct {v1, p0, v0}, Lnwb;-><init>([BI)V

    return-object v1
.end method

.method public static ah(Ljava/io/OutputStream;I)Lnwd;
    .locals 1

    new-instance v0, Lnwa;

    invoke-direct {v0, p0, p1}, Lnwa;-><init>(Ljava/io/OutputStream;I)V

    return-object v0
.end method

.method public static at(I)I
    .locals 0

    invoke-static {p0}, Lnwd;->Z(I)I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static au(I)I
    .locals 0

    invoke-static {p0}, Lnwd;->Z(I)I

    move-result p0

    add-int/lit8 p0, p0, 0x8

    return p0
.end method

.method public static av(I)I
    .locals 0

    invoke-static {p0}, Lnwd;->Z(I)I

    move-result p0

    add-int/lit8 p0, p0, 0x4

    return p0
.end method

.method public static aw(I)I
    .locals 0

    invoke-static {p0}, Lnwd;->Z(I)I

    move-result p0

    add-int/lit8 p0, p0, 0x8

    return p0
.end method

.method public static ax(I)I
    .locals 0

    invoke-static {p0}, Lnwd;->Z(I)I

    move-result p0

    add-int/lit8 p0, p0, 0x4

    return p0
.end method

.method public static ay(I)I
    .locals 0

    invoke-static {p0}, Lnwd;->Z(I)I

    move-result p0

    add-int/lit8 p0, p0, 0x4

    return p0
.end method

.method public static az(I)I
    .locals 0

    invoke-static {p0}, Lnwd;->Z(I)I

    move-result p0

    add-int/lit8 p0, p0, 0x8

    return p0
.end method


# virtual methods
.method public abstract A(II)V
.end method

.method public abstract B(II)V
.end method

.method public abstract C(I)V
.end method

.method public abstract D(IJ)V
.end method

.method public abstract E(J)V
.end method

.method public abstract F([BI)V
.end method

.method public abstract a([BII)V
.end method

.method public final ai()V
    .locals 2

    invoke-virtual {p0}, Lnwd;->b()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Did not write as much data as expected."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method final aj(Ljava/lang/String;Lnzj;)V
    .locals 6

    sget-object v0, Lnwd;->a:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v2, "com.google.protobuf.CodedOutputStream"

    const-string v3, "inefficientWriteStringNoTag"

    const-string v4, "Converting ill-formed UTF-16. Your Protocol Buffer will not round trip correctly!"

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    sget-object p2, Lnxb;->a:Ljava/nio/charset/Charset;

    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    :try_start_0
    array-length p2, p1

    invoke-virtual {p0, p2}, Lnwd;->C(I)V

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lnwd;->a([BII)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance p2, Lnwc;

    invoke-direct {p2, p1}, Lnwc;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public final ak(ID)V
    .locals 0

    invoke-static {p2, p3}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide p2

    invoke-virtual {p0, p1, p2, p3}, Lnwd;->q(IJ)V

    return-void
.end method

.method public final al(D)V
    .locals 0

    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lnwd;->r(J)V

    return-void
.end method

.method public final am(IF)V
    .locals 0

    invoke-static {p2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lnwd;->o(II)V

    return-void
.end method

.method public final an(F)V
    .locals 0

    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p1

    invoke-virtual {p0, p1}, Lnwd;->p(I)V

    return-void
.end method

.method public final ao(Lnxy;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-interface {p1, p0}, Lnxy;->cG(Lnwd;)V

    return-void
.end method

.method public final ap(II)V
    .locals 0

    invoke-static {p2}, Lnwd;->ae(I)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lnwd;->B(II)V

    return-void
.end method

.method public final aq(I)V
    .locals 0

    invoke-static {p1}, Lnwd;->ae(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lnwd;->C(I)V

    return-void
.end method

.method public final ar(IJ)V
    .locals 0

    invoke-static {p2, p3}, Lnwd;->af(J)J

    move-result-wide p2

    invoke-virtual {p0, p1, p2, p3}, Lnwd;->D(IJ)V

    return-void
.end method

.method public final as(J)V
    .locals 0

    invoke-static {p1, p2}, Lnwd;->af(J)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lnwd;->E(J)V

    return-void
.end method

.method public abstract b()I
.end method

.method public abstract i()V
.end method

.method public abstract j(B)V
.end method

.method public abstract l(IZ)V
.end method

.method public abstract m(ILnvt;)V
.end method

.method public abstract n(Lnvt;)V
.end method

.method public abstract o(II)V
.end method

.method public abstract p(I)V
.end method

.method public abstract q(IJ)V
.end method

.method public abstract r(J)V
.end method

.method public abstract s(II)V
.end method

.method public abstract t(I)V
.end method

.method public abstract u(ILnxy;Lnyo;)V
.end method

.method public abstract v(Lnxy;)V
.end method

.method public abstract w(ILnxy;)V
.end method

.method public abstract x(ILnvt;)V
.end method

.method public abstract y(ILjava/lang/String;)V
.end method

.method public abstract z(Ljava/lang/String;)V
.end method
