.class public final Lgcr;
.super Lkfg;


# instance fields
.field public final a:Lfbz;

.field private final b:Ljuh;


# direct methods
.method public constructor <init>(Lfbz;Ljuh;)V
    .locals 0

    invoke-direct {p0}, Lkfg;-><init>()V

    iput-object p1, p0, Lgcr;->a:Lfbz;

    iput-object p2, p0, Lgcr;->b:Ljuh;

    return-void
.end method


# virtual methods
.method public final bi(Lkkp;)V
    .locals 2

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lkkp;->a()I

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_0
    iget-object p1, p0, Lgcr;->b:Ljuh;

    new-instance v0, Lfzr;

    const/16 v1, 0x9

    invoke-direct {v0, p0, v1}, Lfzr;-><init>(Lgcr;I)V

    invoke-virtual {p1, v0}, Ljuh;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
