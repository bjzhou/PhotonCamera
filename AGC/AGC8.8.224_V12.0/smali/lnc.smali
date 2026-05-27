.class public abstract Llnc;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lozu;


# direct methods
.method public constructor <init>(Lozu;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Llnc;->a:Lozu;

    return-void
.end method


# virtual methods
.method public abstract a(Ljava/lang/String;)J
.end method

.method public abstract b(Ljava/lang/Long;)Lozu;
.end method

.method public abstract c()Z
.end method

.method public final d()Lozu;
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Llnc;->e(Ljava/lang/Long;)Lozu;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lnws;->ad(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnwn;

    invoke-virtual {v1, v0}, Lnwn;->s(Lnws;)V

    iget-object v0, v1, Lnwn;->b:Lnws;

    invoke-virtual {v0}, Lnws;->ac()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v1}, Lnwn;->p()V

    :cond_0
    iget-object v0, v1, Lnwn;->b:Lnws;

    check-cast v0, Lozu;

    sget-object v2, Lozu;->d:Lozu;

    iget v2, v0, Lozu;->a:I

    or-int/lit8 v2, v2, 0x2

    iput v2, v0, Lozu;->a:I

    const-wide/16 v2, -0x1

    iput-wide v2, v0, Lozu;->b:J

    invoke-virtual {v1}, Lnwn;->i()Lnws;

    move-result-object v0

    check-cast v0, Lozu;

    return-object v0
.end method

.method public final e(Ljava/lang/Long;)Lozu;
    .locals 5

    iget-object v0, p0, Llnc;->a:Lozu;

    iget v1, v0, Lozu;->c:I

    invoke-static {v1}, Lljz;->u(I)I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    goto :goto_1

    :cond_1
    const/4 v2, 0x5

    if-ne v1, v2, :cond_0

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-object v2, p0, Llnc;->a:Lozu;

    iget-wide v2, v2, Lozu;->b:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_2

    goto :goto_0

    :cond_2
    sget-object v0, Lozu;->d:Lozu;

    invoke-virtual {v0}, Lnws;->O()Lnwn;

    move-result-object v0

    iget-object v1, p0, Llnc;->a:Lozu;

    iget v1, v1, Lozu;->c:I

    invoke-static {v1}, Lljz;->u(I)I

    move-result v1

    if-nez v1, :cond_3

    const/4 v1, 0x1

    :cond_3
    iget-object v2, v0, Lnwn;->b:Lnws;

    invoke-virtual {v2}, Lnws;->ac()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_4
    iget-object v2, v0, Lnwn;->b:Lnws;

    check-cast v2, Lozu;

    add-int/lit8 v1, v1, -0x1

    iput v1, v2, Lozu;->c:I

    iget v1, v2, Lozu;->a:I

    or-int/lit8 v1, v1, 0x4

    iput v1, v2, Lozu;->a:I

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iget-object p1, v0, Lnwn;->b:Lnws;

    invoke-virtual {p1}, Lnws;->ac()Z

    move-result p1

    if-nez p1, :cond_5

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_5
    iget-object p1, v0, Lnwn;->b:Lnws;

    check-cast p1, Lozu;

    iget v3, p1, Lozu;->a:I

    or-int/lit8 v3, v3, 0x2

    iput v3, p1, Lozu;->a:I

    iput-wide v1, p1, Lozu;->b:J

    invoke-virtual {v0}, Lnwn;->i()Lnws;

    move-result-object p1

    check-cast p1, Lozu;

    return-object p1

    :cond_6
    :goto_0
    iget-object p1, p0, Llnc;->a:Lozu;

    return-object p1

    :goto_1
    return-object v0
.end method
