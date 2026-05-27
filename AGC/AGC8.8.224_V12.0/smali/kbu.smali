.class public Lkbu;
.super Ljava/lang/Exception;


# instance fields
.field public final a:Lkbo;

.field public final b:Lkll;

.field public final c:Z


# direct methods
.method public constructor <init>(Lkll;Lkbo;Z)V
    .locals 4

    iget-object v0, p1, Lkll;->a:Ljava/lang/String;

    invoke-virtual {p2}, Lkbo;->c()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Camera "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " encountered a fatal error "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    if-eq v0, p3, :cond_0

    const-string v0, "before opening: "

    goto :goto_0

    :cond_0
    const-string v0, "after open: "

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lkbu;->b:Lkll;

    iput-object p2, p0, Lkbu;->a:Lkbo;

    iput-boolean p3, p0, Lkbu;->c:Z

    return-void
.end method
