.class public final Lftu;
.super Ljava/lang/Object;


# instance fields
.field public final a:Ljvk;

.field public b:Lftt;

.field public final c:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljvk;

    new-instance v1, Lgxb;

    invoke-static {}, Lftt;->a()Lftt;

    move-result-object v2

    invoke-static {}, Lftt;->a()Lftt;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lgxb;-><init>(Lftt;Lftt;)V

    invoke-direct {v0, v1}, Ljvk;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lftu;->a:Ljvk;

    invoke-static {}, Lftt;->a()Lftt;

    move-result-object v0

    iput-object v0, p0, Lftu;->b:Lftt;

    iput-boolean p1, p0, Lftu;->c:Z

    return-void
.end method
