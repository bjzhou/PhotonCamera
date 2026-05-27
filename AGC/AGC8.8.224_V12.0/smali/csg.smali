.class public final Lcsg;
.super Ljava/lang/Object;


# instance fields
.field public final a:Lcqv;

.field public final b:Libj;

.field public final c:Ljuh;

.field public d:Lcha;

.field public e:Leg;

.field public final f:Ljew;


# direct methods
.method public constructor <init>(Ljew;Lcqv;Libj;Ljuh;[B[B[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcsg;->f:Ljew;

    iput-object p2, p0, Lcsg;->a:Lcqv;

    iput-object p3, p0, Lcsg;->b:Libj;

    iput-object p4, p0, Lcsg;->c:Ljuh;

    return-void
.end method


# virtual methods
.method public final a()Landroid/content/DialogInterface$OnClickListener;
    .locals 2

    new-instance v0, Lcdc;

    const/4 v1, 0x6

    invoke-direct {v0, p0, v1}, Lcdc;-><init>(Lcsg;I)V

    return-object v0
.end method

.method public final b()Landroid/content/DialogInterface$OnClickListener;
    .locals 2

    new-instance v0, Lcdc;

    const/4 v1, 0x5

    invoke-direct {v0, p0, v1}, Lcdc;-><init>(Lcsg;I)V

    return-object v0
.end method

.method public final c()V
    .locals 3

    iget-object v0, p0, Lcsg;->c:Ljuh;

    new-instance v1, Lcqf;

    const/16 v2, 0xe

    invoke-direct {v1, p0, v2}, Lcqf;-><init>(Lcsg;I)V

    invoke-virtual {v0, v1}, Ljuh;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
