.class public final Lfye;
.super Ljava/lang/Object;


# instance fields
.field public a:Z

.field public b:Z

.field public c:Lgqm;

.field public final d:Lmqp;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lfyd;

    invoke-direct {v0, p0}, Lfyd;-><init>(Lfye;)V

    invoke-static {v0}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object v0

    iput-object v0, p0, Lfye;->d:Lmqp;

    return-void
.end method
