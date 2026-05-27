.class public final Lbng;
.super Ljava/lang/Object;

# interfaces
.implements Lbnf;


# instance fields
.field public final a:Lbnf;

.field private final b:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Lbnf;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbng;->b:Landroid/os/Handler;

    iput-object p2, p0, Lbng;->a:Lbnf;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    iget-object v0, p0, Lbng;->b:Landroid/os/Handler;

    new-instance v1, Lazo;

    const/16 v2, 0x8

    invoke-direct {v1, p0, v2}, Lazo;-><init>(Lbng;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
