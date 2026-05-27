.class public final synthetic Lkst;
.super Ljava/lang/Object;

# interfaces
.implements Ljop;


# instance fields
.field public final synthetic a:Ljns;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Ljava/util/concurrent/Executor;


# direct methods
.method public synthetic constructor <init>(Ljns;Ljava/lang/String;Ljava/util/concurrent/Executor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkst;->a:Ljns;

    iput-object p2, p0, Lkst;->b:Ljava/lang/String;

    iput-object p3, p0, Lkst;->c:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public final d(Ljava/lang/Object;)V
    .locals 5

    iget-object v0, p0, Lkst;->a:Ljns;

    iget-object v1, p0, Lkst;->b:Ljava/lang/String;

    iget-object v2, p0, Lkst;->c:Ljava/util/concurrent/Executor;

    check-cast p1, Ljava/lang/Void;

    sget-boolean p1, Lksu;->a:Z

    sget-object p1, Ljce;->d:Ljce;

    iget-object v3, v0, Ljde;->c:Landroid/content/Context;

    const v4, 0xbdfcb8

    invoke-virtual {p1, v3, v4}, Ljce;->f(Landroid/content/Context;I)I

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Ljfm;->a()Ljfl;

    move-result-object p1

    new-instance v3, Ljnr;

    const/4 v4, 0x2

    invoke-direct {v3, v1, v4}, Ljnr;-><init>(Ljava/lang/String;I)V

    iput-object v3, p1, Ljfl;->a:Ljfh;

    invoke-virtual {p1}, Ljfl;->a()Ljfm;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljde;->e(Ljfm;)Ljot;

    move-result-object p1

    goto :goto_0

    :cond_0
    new-instance p1, Ljda;

    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const/16 v3, 0x10

    invoke-direct {v0, v3}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    invoke-direct {p1, v0}, Ljda;-><init>(Lcom/google/android/gms/common/api/Status;)V

    invoke-static {p1}, Ljpw;->a(Ljava/lang/Exception;)Ljot;

    move-result-object p1

    :goto_0
    new-instance v0, Lilp;

    const/4 v3, 0x3

    invoke-direct {v0, v1, v3}, Lilp;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p1, v2, v0}, Ljot;->j(Ljava/util/concurrent/Executor;Ljoo;)V

    return-void
.end method
