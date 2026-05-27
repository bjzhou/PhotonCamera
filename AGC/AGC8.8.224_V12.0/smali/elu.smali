.class public final Lelu;
.super Ljava/lang/Object;

# interfaces
.implements Logk;


# instance fields
.field private final a:Lgxb;


# direct methods
.method public constructor <init>(Lgxb;[B[B[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lelu;->a:Lgxb;

    return-void
.end method

.method public static b(Lgxb;)Lelu;
    .locals 2

    new-instance v0, Lelu;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, v1, v1}, Lelu;-><init>(Lgxb;[B[B[B)V

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/lang/ref/WeakReference;
    .locals 2

    iget-object v0, p0, Lelu;->a:Lgxb;

    new-instance v1, Ljava/lang/ref/WeakReference;

    iget-object v0, v0, Lgxb;->a:Ljava/lang/Object;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    return-object v1
.end method

.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lelu;->a()Ljava/lang/ref/WeakReference;

    move-result-object v0

    return-object v0
.end method
