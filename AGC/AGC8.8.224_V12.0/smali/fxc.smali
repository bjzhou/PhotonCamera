.class public final Lfxc;
.super Ljava/lang/Object;

# interfaces
.implements Lfxw;


# instance fields
.field final synthetic a:Lfxq;


# direct methods
.method public constructor <init>(Lfxq;)V
    .locals 0

    iput-object p1, p0, Lfxc;->a:Lfxq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;)Lnou;
    .locals 1

    iget-object v0, p0, Lfxc;->a:Lfxq;

    check-cast p1, Lgqr;

    invoke-virtual {v0, p1}, Lfxq;->b(Lgqr;)Lnou;

    move-result-object p1

    return-object p1
.end method
