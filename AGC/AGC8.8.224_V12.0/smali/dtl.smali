.class public final Ldtl;
.super Ljava/lang/Object;

# interfaces
.implements Ldsu;


# instance fields
.field final synthetic a:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Ldtl;->a:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    return-void
.end method

.method public final c(Lkli;)V
    .locals 0

    iget-object p1, p0, Ldtl;->a:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public final synthetic d(Lkli;Lcea;)V
    .locals 0

    invoke-static {p0, p1}, Ldst;->a(Ldsu;Lkli;)V

    return-void
.end method
