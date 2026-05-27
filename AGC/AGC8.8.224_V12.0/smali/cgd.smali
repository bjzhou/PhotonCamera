.class public final Lcgd;
.super Ljava/lang/Object;

# interfaces
.implements Lcgj;


# instance fields
.field public final a:Lell;

.field public final b:Licf;

.field private final c:Ljvs;

.field private final d:Lcgi;

.field private final e:Landroid/widget/FrameLayout;

.field private final f:Litm;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Ljvs;Landroid/content/Context;Lell;Litm;Lcgi;)V
    .locals 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcgd;->c:Ljvs;

    iput-object p4, p0, Lcgd;->a:Lell;

    iput-object p6, p0, Lcgd;->d:Lcgi;

    const/4 v0, 0x0

    const/16 v1, 0xbb8

    const/4 v2, 0x0

    const/4 v3, 0x0

    const p2, 0x7f14052d

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, -0x1

    const/16 v8, 0xc

    move-object v5, p3

    invoke-static/range {v0 .. v8}, Ljpw;->k(ZILandroid/view/View$OnClickListener;Lice;Ljava/lang/String;Landroid/content/Context;ZII)Licf;

    move-result-object p1

    iput-object p1, p0, Lcgd;->b:Licf;

    check-cast p3, Landroid/app/Activity;

    const p1, 0x7f0b0239

    invoke-virtual {p3, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcgd;->e:Landroid/widget/FrameLayout;

    iput-object p5, p0, Lcgd;->f:Litm;

    return-void
.end method


# virtual methods
.method public final a()Lkad;
    .locals 4

    sget-object v0, Lnbk;->a:Lnbc;

    new-instance v0, Ljuf;

    invoke-direct {v0}, Ljuf;-><init>()V

    iget-object v1, p0, Lcgd;->d:Lcgi;

    iget-object v2, p0, Lcgd;->e:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcgd;->f:Litm;

    invoke-interface {v1, v2, v3}, Lcgi;->b(Landroid/widget/FrameLayout;Litm;)Lkad;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljuf;->d(Lkad;)V

    iget-object v1, p0, Lcgd;->c:Ljvs;

    invoke-static {v1}, Ljvo;->c(Ljvs;)Ljvs;

    move-result-object v1

    new-instance v2, Lcbl;

    const/16 v3, 0xc

    invoke-direct {v2, p0, v3}, Lcbl;-><init>(Lcgd;I)V

    sget-object v3, Lnnv;->a:Lnnv;

    invoke-interface {v1, v2, v3}, Ljvs;->a(Lkai;Ljava/util/concurrent/Executor;)Lkad;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljuf;->d(Lkad;)V

    return-object v0
.end method
