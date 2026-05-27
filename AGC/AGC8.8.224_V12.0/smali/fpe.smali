.class final Lfpe;
.super Ljava/lang/Object;

# interfaces
.implements Lfsl;


# instance fields
.field final synthetic a:Lnph;

.field final synthetic b:Lfpf;


# direct methods
.method public constructor <init>(Lfpf;Lnph;)V
    .locals 0

    iput-object p1, p0, Lfpe;->b:Lfpf;

    iput-object p2, p0, Lfpe;->a:Lnph;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lfpe;->a:Lnph;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lnph;->e(Ljava/lang/Object;)Z

    return-void
.end method

.method public final b(Ljava/lang/Throwable;)V
    .locals 1

    iget-object p1, p0, Lfpe;->a:Lnph;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lnph;->e(Ljava/lang/Object;)Z

    return-void
.end method

.method public final c(Lkpb;)V
    .locals 1

    iget-object v0, p0, Lfpe;->a:Lnph;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0, p1}, Lnph;->e(Ljava/lang/Object;)Z

    iget-object p1, p0, Lfpe;->b:Lfpf;

    iget-object p1, p1, Lfpf;->a:Lkeb;

    invoke-interface {p1}, Lkeb;->close()V

    return-void
.end method
