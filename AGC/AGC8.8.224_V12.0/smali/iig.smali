.class public final synthetic Liig;
.super Ljava/lang/Object;

# interfaces
.implements Libc;


# instance fields
.field public final synthetic a:Lnph;


# direct methods
.method public synthetic constructor <init>(Lnph;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Liig;->a:Lnph;

    return-void
.end method


# virtual methods
.method public final a(Lika;)V
    .locals 1

    iget-object p1, p0, Liig;->a:Lnph;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lnph;->e(Ljava/lang/Object;)Z

    return-void
.end method
