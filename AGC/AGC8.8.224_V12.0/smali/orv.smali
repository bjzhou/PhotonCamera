.class public final Lorv;
.super Ljava/util/concurrent/CancellationException;

# interfaces
.implements Lopn;


# instance fields
.field public final transient a:Lora;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lora;)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lorv;->a:Lora;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a()Ljava/lang/Throwable;
    .locals 3

    new-instance v0, Lorv;

    invoke-virtual {p0}, Lorv;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, ""

    :cond_0
    iget-object v2, p0, Lorv;->a:Lora;

    invoke-direct {v0, v1, v2}, Lorv;-><init>(Ljava/lang/String;Lora;)V

    invoke-virtual {v0, p0}, Lorv;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    return-object v0
.end method
