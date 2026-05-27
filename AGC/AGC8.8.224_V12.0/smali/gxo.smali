.class public final synthetic Lgxo;
.super Ljava/lang/Object;

# interfaces
.implements Lmrl;


# instance fields
.field public final synthetic a:Lkbc;

.field public final synthetic b:Lgyb;

.field public final synthetic c:Lkqb;

.field public final synthetic d:Lkqo;

.field public final synthetic e:Ljava/lang/String;

.field public final synthetic f:J


# direct methods
.method public synthetic constructor <init>(Lkbc;Lgyb;Lkqb;Lkqo;Ljava/lang/String;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgxo;->a:Lkbc;

    iput-object p2, p0, Lgxo;->b:Lgyb;

    iput-object p3, p0, Lgxo;->c:Lkqb;

    iput-object p4, p0, Lgxo;->d:Lkqo;

    iput-object p5, p0, Lgxo;->e:Ljava/lang/String;

    iput-wide p6, p0, Lgxo;->f:J

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 8

    iget-object v0, p0, Lgxo;->a:Lkbc;

    iget-object v1, p0, Lgxo;->b:Lgyb;

    iget-object v2, p0, Lgxo;->c:Lkqb;

    iget-object v3, p0, Lgxo;->d:Lkqo;

    iget-object v4, p0, Lgxo;->e:Ljava/lang/String;

    iget-wide v5, p0, Lgxo;->f:J

    sget v7, Lgxr;->f:I

    const-string v7, "Initialize MediaGroup"

    invoke-interface {v0, v7}, Lkbc;->e(Ljava/lang/String;)V

    sget-object v7, Lgyb;->b:Lgyb;

    if-ne v1, v7, :cond_0

    invoke-static {v4}, Lmqr;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v3, v1, v5, v6}, Lkqb;->a(Lkqo;Ljava/lang/String;J)Lkpl;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-static {v4}, Lmqr;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    check-cast v2, Lkqc;

    iget-object v3, v2, Lkqc;->b:Lkqo;

    invoke-virtual {v2, v3, v1, v5, v6}, Lkqc;->a(Lkqo;Ljava/lang/String;J)Lkpl;

    move-result-object v1

    :goto_0
    invoke-interface {v0}, Lkbc;->f()V

    return-object v1
.end method
