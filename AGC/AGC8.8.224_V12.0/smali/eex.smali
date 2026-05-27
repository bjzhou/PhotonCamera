.class public final synthetic Leex;
.super Ljava/lang/Object;

# interfaces
.implements Lgnq;


# instance fields
.field public final synthetic a:Lgue;


# direct methods
.method public synthetic constructor <init>(Lgue;[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Leex;->a:Lgue;

    return-void
.end method


# virtual methods
.method public final a(Lkeb;)Z
    .locals 1

    iget-object v0, p0, Leex;->a:Lgue;

    invoke-virtual {v0, p1}, Lgue;->a(Lkeb;)Lgli;

    move-result-object p1

    invoke-virtual {p1}, Lgli;->b()Lkfj;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
