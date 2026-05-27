.class final Lgho;
.super Ljava/lang/Object;

# interfaces
.implements Lghg;


# instance fields
.field private a:Z

.field private final b:Lker;


# direct methods
.method public constructor <init>(Lker;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgho;->b:Lker;

    return-void
.end method


# virtual methods
.method public final a()Lkfh;
    .locals 3

    invoke-static {}, Lkfh;->a()Lkff;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lkff;->c(I)V

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lkff;->b(I)V

    invoke-virtual {v0, v1}, Lkff;->e(I)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lkff;->d(Z)V

    invoke-virtual {v0}, Lkff;->a()Lkfh;

    move-result-object v0

    return-object v0
.end method

.method public final close()V
    .locals 2

    iget-boolean v0, p0, Lgho;->a:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lgho;->a:Z

    iget-object v0, p0, Lgho;->b:Lker;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lghp;->c(Lker;Z)V

    return-void
.end method
