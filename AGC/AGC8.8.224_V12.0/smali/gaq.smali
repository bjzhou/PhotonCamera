.class public final synthetic Lgaq;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lnph;

.field public final synthetic b:Loiw;


# direct methods
.method public synthetic constructor <init>(Lnph;Loiw;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgaq;->a:Lnph;

    iput-object p2, p0, Lgaq;->b:Loiw;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lgaq;->a:Lnph;

    iget-object v1, p0, Lgaq;->b:Loiw;

    check-cast v1, Lgat;

    invoke-virtual {v1}, Lgat;->a()Lgam;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnph;->e(Ljava/lang/Object;)Z

    return-void
.end method
