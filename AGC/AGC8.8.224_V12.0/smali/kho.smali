.class public final synthetic Lkho;
.super Ljava/lang/Object;

# interfaces
.implements Ljzu;


# instance fields
.field public final synthetic a:Lkjt;


# direct methods
.method public synthetic constructor <init>(Lkjt;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkho;->a:Lkjt;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lkho;->a:Lkjt;

    iget-object v0, v0, Lkjt;->e:Lkgd;

    iget-object v0, v0, Lkgd;->a:Ljava/lang/Object;

    check-cast v0, Landroidx/wear/ambient/AmbientDelegate;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Landroidx/wear/ambient/AmbientDelegate;->aa(J)Lknb;

    move-result-object v0

    return-object v0
.end method
