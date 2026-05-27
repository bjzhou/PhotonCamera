.class public final Ljwd;
.super Ljava/lang/Object;

# interfaces
.implements Ljvs;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field public volatile a:Ljava/lang/Object;

.field private final b:Ljvx;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljwd;->a:Ljava/lang/Object;

    new-instance p1, Ljvx;

    new-instance v0, Ldet;

    const/16 v1, 0xb

    invoke-direct {v0, p0, v1}, Ldet;-><init>(Ljwd;I)V

    invoke-direct {p1, v0}, Ljvx;-><init>(Lmrl;)V

    iput-object p1, p0, Ljwd;->b:Ljvx;

    return-void
.end method


# virtual methods
.method public final a(Lkai;Ljava/util/concurrent/Executor;)Lkad;
    .locals 1

    iget-object v0, p0, Ljwd;->b:Ljvx;

    invoke-virtual {v0, p1, p2}, Ljvx;->a(Lkai;Ljava/util/concurrent/Executor;)Lkad;

    move-result-object p1

    return-object p1
.end method

.method public final bm()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Ljwd;->b:Ljvx;

    invoke-virtual {v0}, Ljvx;->bm()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final c()V
    .locals 1

    iget-object v0, p0, Ljwd;->b:Ljvx;

    invoke-virtual {v0}, Ljvx;->c()V

    return-void
.end method
