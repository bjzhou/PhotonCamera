.class public final Lgdf;
.super Ljava/lang/Object;

# interfaces
.implements Logk;


# instance fields
.field private final a:Lbkb;


# direct methods
.method public constructor <init>(Lbkb;[B[B[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgdf;->a:Lbkb;

    return-void
.end method


# virtual methods
.method public final a()Lgdd;
    .locals 1

    iget-object v0, p0, Lgdf;->a:Lbkb;

    iget-object v0, v0, Lbkb;->a:Ljava/lang/Object;

    check-cast v0, Lgdd;

    return-object v0
.end method

.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lgdf;->a()Lgdd;

    move-result-object v0

    return-object v0
.end method
