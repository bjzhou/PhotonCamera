.class public final synthetic Lljv;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lljw;


# direct methods
.method public synthetic constructor <init>(Lljw;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lljv;->a:Lljw;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lljv;->a:Lljw;

    invoke-virtual {v0}, Lljw;->aV()V

    return-void
.end method
