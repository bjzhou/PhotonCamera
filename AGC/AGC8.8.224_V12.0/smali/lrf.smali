.class public final Llrf;
.super Ljava/lang/Object;


# static fields
.field public static final a:Landroid/accounts/Account;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Landroid/accounts/Account;

    const-string v1, "shared"

    const-string v2, "mobstore"

    invoke-direct {v0, v1, v2}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Llrf;->a:Landroid/accounts/Account;

    return-void
.end method

.method static a(Landroid/accounts/Account;)Z
    .locals 1

    sget-object v0, Llrf;->a:Landroid/accounts/Account;

    invoke-virtual {v0, p0}, Landroid/accounts/Account;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
