.class public abstract Lowv;
.super Ljava/lang/Object;


# instance fields
.field private final a:Loop;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>([B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object p1, Lovz;->a:Ljava/lang/Object;

    invoke-static {p1}, Lolp;->k(Ljava/lang/Object;)Loop;

    move-result-object p1

    iput-object p1, p0, Lowv;->a:Loop;

    return-void
.end method


# virtual methods
.method public abstract a(Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public abstract b(Ljava/lang/Object;Ljava/lang/Object;)V
.end method

.method public final c(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lowv;->a:Loop;

    iget-object v0, v0, Loop;->a:Ljava/lang/Object;

    sget-object v1, Lovz;->a:Ljava/lang/Object;

    if-ne v0, v1, :cond_1

    invoke-virtual {p0, p1}, Lowv;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-boolean v1, Lopw;->a:Z

    iget-object v1, p0, Lowv;->a:Loop;

    iget-object v1, v1, Loop;->a:Ljava/lang/Object;

    sget-object v2, Lovz;->a:Ljava/lang/Object;

    if-eq v1, v2, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lowv;->a:Loop;

    invoke-virtual {v1, v2, v0}, Loop;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v0, p0, Lowv;->a:Loop;

    iget-object v0, v0, Loop;->a:Ljava/lang/Object;

    :cond_1
    :goto_0
    invoke-virtual {p0, p1, v0}, Lowv;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Lopx;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Lopx;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "@"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
