.class public final Llm;
.super Llg;

# interfaces
.implements Llh;


# instance fields
.field public a:Llh;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2, v0}, Llg;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I[B)V

    return-void
.end method


# virtual methods
.method public final p(Landroid/content/Context;Z)Lkm;
    .locals 1

    new-instance v0, Lll;

    invoke-direct {v0, p1, p2}, Lll;-><init>(Landroid/content/Context;Z)V

    iput-object p0, v0, Lll;->e:Llh;

    return-object v0
.end method
