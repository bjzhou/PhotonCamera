.class public final Ldcj;
.super Ljava/lang/Object;


# instance fields
.field final a:I

.field b:I

.field c:I

.field d:I

.field e:J


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Ldcj;->a:I

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Ldcj;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Ldcj;

    iget v1, p0, Ldcj;->a:I

    iget v3, p1, Ldcj;->a:I

    if-ne v1, v3, :cond_2

    iget v1, p0, Ldcj;->b:I

    iget v3, p1, Ldcj;->b:I

    if-ne v1, v3, :cond_2

    iget v1, p0, Ldcj;->c:I

    iget v3, p1, Ldcj;->c:I

    if-ne v1, v3, :cond_2

    iget v1, p0, Ldcj;->d:I

    iget v3, p1, Ldcj;->d:I

    if-ne v1, v3, :cond_2

    iget-wide v3, p0, Ldcj;->e:J

    iget-wide v5, p1, Ldcj;->e:J

    cmp-long p1, v3, v5

    if-nez p1, :cond_2

    return v0

    :cond_2
    return v2
.end method
