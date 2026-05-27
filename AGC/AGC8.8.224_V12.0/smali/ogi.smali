.class public final Logi;
.super Ljava/lang/Object;

# interfaces
.implements Logk;


# instance fields
.field private a:Loiw;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Loiw;Loiw;)V
    .locals 1

    check-cast p0, Logi;

    iget-object v0, p0, Logi;->a:Loiw;

    if-nez v0, :cond_0

    iput-object p1, p0, Logi;->a:Loiw;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Logi;->a:Loiw;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method
