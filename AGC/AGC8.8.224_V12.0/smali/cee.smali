.class public final Lcee;
.super Ljava/lang/Object;

# interfaces
.implements Lcew;


# instance fields
.field private final a:Licf;

.field private final b:Lell;

.field private c:I

.field private final d:Ljgt;


# direct methods
.method public constructor <init>(Lell;Landroid/content/Context;Ljgt;[B)V
    .locals 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcee;->b:Lell;

    iput-object p3, p0, Lcee;->d:Ljgt;

    const/4 p1, 0x1

    iput p1, p0, Lcee;->c:I

    iget-object p1, p3, Ljgt;->c:Ljava/lang/Object;

    iget-boolean v0, p3, Ljgt;->b:Z

    iget v1, p3, Ljgt;->a:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v4, p1

    check-cast v4, Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, -0x1

    const/4 v8, 0x3

    move-object v5, p2

    invoke-static/range {v0 .. v8}, Ljpw;->k(ZILandroid/view/View$OnClickListener;Lice;Ljava/lang/String;Landroid/content/Context;ZII)Licf;

    move-result-object p1

    iput-object p1, p0, Lcee;->a:Licf;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lcee;->b:Lell;

    iget-object v1, p0, Lcee;->a:Licf;

    invoke-interface {v0, v1}, Lell;->g(Lelk;)V

    const/4 v0, 0x3

    iput v0, p0, Lcee;->c:I

    iget-object v0, p0, Lcee;->d:Ljgt;

    iget-object v0, v0, Ljgt;->d:Ljava/lang/Object;

    check-cast v0, Lbze;

    invoke-virtual {v0}, Lbze;->h()V

    return-void
.end method

.method public final b()V
    .locals 2

    iget-object v0, p0, Lcee;->b:Lell;

    iget-object v1, p0, Lcee;->a:Licf;

    invoke-interface {v0, v1}, Lell;->d(Lelk;)Lkad;

    const/4 v0, 0x2

    iput v0, p0, Lcee;->c:I

    iget-object v0, p0, Lcee;->d:Ljgt;

    iget-object v0, v0, Ljgt;->d:Ljava/lang/Object;

    check-cast v0, Lbze;

    invoke-virtual {v0}, Lbze;->i()V

    return-void
.end method

.method public final c()I
    .locals 1

    iget v0, p0, Lcee;->c:I

    return v0
.end method
