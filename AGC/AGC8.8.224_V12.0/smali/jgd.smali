.class public final Ljgd;
.super Ljava/lang/Object;


# instance fields
.field public a:Ljava/lang/Object;

.field public b:Ljava/lang/Object;

.field public c:Ljava/lang/Object;

.field public d:Ljava/lang/Object;

.field public final e:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Ljoa;->a:Ljoa;

    iput-object v0, p0, Ljgd;->e:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroidx/wear/ambient/AmbientMode$AmbientController;[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljgd;->e:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a()Ljge;
    .locals 7

    new-instance v6, Ljge;

    iget-object v0, p0, Ljgd;->a:Ljava/lang/Object;

    iget-object v2, p0, Ljgd;->b:Ljava/lang/Object;

    iget-object v1, p0, Ljgd;->c:Ljava/lang/Object;

    iget-object v3, p0, Ljgd;->d:Ljava/lang/Object;

    iget-object v4, p0, Ljgd;->e:Ljava/lang/Object;

    move-object v5, v4

    check-cast v5, Ljoa;

    move-object v4, v3

    check-cast v4, Ljava/lang/String;

    move-object v3, v1

    check-cast v3, Ljava/lang/String;

    move-object v1, v0

    check-cast v1, Landroid/accounts/Account;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Ljge;-><init>(Landroid/accounts/Account;Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;Ljoa;)V

    return-object v6
.end method
