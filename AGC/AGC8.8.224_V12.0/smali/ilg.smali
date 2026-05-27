.class public final Lilg;
.super Ljava/lang/Object;

# interfaces
.implements Lfaz;
.implements Lfan;
.implements Lezh;


# instance fields
.field public final a:Ljuh;

.field public final b:Lezx;

.field public final c:Lell;

.field public final d:Loiw;

.field final e:Licf;

.field private final f:Landroid/content/Context;

.field private final g:Landroid/net/ConnectivityManager$NetworkCallback;

.field private final h:Lcdi;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljuh;Lezx;Lcdi;Lell;Loiw;)V
    .locals 10

    move-object v0, p0

    move-object v6, p1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Lilf;

    invoke-direct {v1, p0}, Lilf;-><init>(Lilg;)V

    iput-object v1, v0, Lilg;->g:Landroid/net/ConnectivityManager$NetworkCallback;

    iput-object v6, v0, Lilg;->f:Landroid/content/Context;

    move-object v1, p2

    iput-object v1, v0, Lilg;->a:Ljuh;

    move-object v1, p3

    iput-object v1, v0, Lilg;->b:Lezx;

    move-object v1, p4

    iput-object v1, v0, Lilg;->h:Lcdi;

    move-object v1, p5

    iput-object v1, v0, Lilg;->c:Lell;

    move-object/from16 v1, p6

    iput-object v1, v0, Lilg;->d:Loiw;

    const/4 v1, 0x1

    const/16 v2, 0xbb8

    const/4 v3, 0x0

    const/4 v4, 0x0

    const v5, 0x7f1400e6

    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    const/4 v8, -0x1

    const/4 v9, 0x2

    invoke-static/range {v1 .. v9}, Ljpw;->k(ZILandroid/view/View$OnClickListener;Lice;Ljava/lang/String;Landroid/content/Context;ZII)Licf;

    move-result-object v1

    iput-object v1, v0, Lilg;->e:Licf;

    return-void
.end method

.method private final a()V
    .locals 2

    iget-object v0, p0, Lilg;->c:Lell;

    iget-object v1, p0, Lilg;->e:Licf;

    invoke-interface {v0, v1}, Lell;->g(Lelk;)V

    iget-object v0, p0, Lilg;->f:Landroid/content/Context;

    invoke-static {v0}, Linb;->w(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lilg;->c:Lell;

    iget-object v1, p0, Lilg;->e:Licf;

    invoke-interface {v0, v1}, Lell;->d(Lelk;)Lkad;

    :cond_0
    return-void
.end method


# virtual methods
.method public final bL(Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0}, Lilg;->a()V

    return-void
.end method

.method public final bQ()V
    .locals 3

    iget-object v0, p0, Lilg;->h:Lcdi;

    invoke-virtual {v0}, Lcdi;->i()Ljuf;

    move-result-object v0

    iget-object v1, p0, Lilg;->f:Landroid/content/Context;

    iget-object v2, p0, Lilg;->g:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-static {v1, v2}, Linb;->v(Landroid/content/Context;Landroid/net/ConnectivityManager$NetworkCallback;)Lkad;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljuf;->d(Lkad;)V

    invoke-direct {p0}, Lilg;->a()V

    return-void
.end method
