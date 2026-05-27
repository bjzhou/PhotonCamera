.class public final synthetic Lfni;
.super Ljava/lang/Object;

# interfaces
.implements Lkad;


# instance fields
.field public final synthetic a:Lnph;


# direct methods
.method public synthetic constructor <init>(Lnph;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfni;->a:Lnph;

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 3

    iget-object v0, p0, Lfni;->a:Lnph;

    invoke-virtual {v0}, Lnph;->isDone()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Lkdf;

    const-string v2, "FrameServer is already closed."

    invoke-direct {v1, v2}, Lkdf;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lnph;->a(Ljava/lang/Throwable;)Z

    :cond_0
    return-void
.end method
