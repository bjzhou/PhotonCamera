.class public final synthetic Lnnh;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lnni;

.field public final synthetic b:Lmvm;


# direct methods
.method public synthetic constructor <init>(Lnni;Lmvm;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnnh;->a:Lnni;

    iput-object p2, p0, Lnnh;->b:Lmvm;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lnnh;->a:Lnni;

    iget-object v1, p0, Lnnh;->b:Lmvm;

    invoke-virtual {v0, v1}, Lnni;->j(Lmvm;)V

    return-void
.end method
