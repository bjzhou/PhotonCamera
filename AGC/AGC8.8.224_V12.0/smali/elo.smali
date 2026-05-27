.class public final Lelo;
.super Ljava/lang/Object;

# interfaces
.implements Logk;


# instance fields
.field private final a:Lgxb;


# direct methods
.method public constructor <init>(Lgxb;[B[B[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lelo;->a:Lgxb;

    return-void
.end method

.method public static b(Lgxb;)Lelo;
    .locals 2

    new-instance v0, Lelo;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, v1, v1}, Lelo;-><init>(Lgxb;[B[B[B)V

    return-object v0
.end method


# virtual methods
.method public final a()Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lelo;->a:Lgxb;

    iget-object v0, v0, Lgxb;->a:Ljava/lang/Object;

    check-cast v0, Landroid/app/Activity;

    return-object v0
.end method

.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lelo;->a()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method
