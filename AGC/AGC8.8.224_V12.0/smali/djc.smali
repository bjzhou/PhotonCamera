.class public final Ldjc;
.super Ljava/lang/Object;

# interfaces
.implements Logk;


# instance fields
.field private final a:Ldja;


# direct methods
.method public constructor <init>(Ldja;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldjc;->a:Ldja;

    return-void
.end method


# virtual methods
.method public final a()Landroid/content/ContentProvider;
    .locals 1

    iget-object v0, p0, Ldjc;->a:Ldja;

    iget-object v0, v0, Ldja;->a:Ljava/lang/Object;

    check-cast v0, Landroid/content/ContentProvider;

    return-object v0
.end method

.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Ldjc;->a()Landroid/content/ContentProvider;

    move-result-object v0

    return-object v0
.end method
