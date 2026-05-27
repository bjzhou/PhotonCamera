.class public final Lels;
.super Ljava/lang/Object;

# interfaces
.implements Logk;


# instance fields
.field private final a:Lgxb;


# direct methods
.method public constructor <init>(Lgxb;[B[B[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lels;->a:Lgxb;

    return-void
.end method

.method public static b(Lgxb;)Lels;
    .locals 2

    new-instance v0, Lels;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, v1, v1}, Lels;-><init>(Lgxb;[B[B[B)V

    return-object v0
.end method


# virtual methods
.method public final a()Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Lels;->a:Lgxb;

    iget-object v0, v0, Lgxb;->a:Ljava/lang/Object;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object v0
.end method

.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lels;->a()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method
