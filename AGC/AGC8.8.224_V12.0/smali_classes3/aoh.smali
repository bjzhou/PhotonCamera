.class final Laoh;
.super Ljava/lang/Object;

# interfaces
.implements Lanu;


# instance fields
.field final synthetic a:Landroidx/preference/PreferenceGroup;

.field final synthetic b:Laoj;


# direct methods
.method public constructor <init>(Laoj;Landroidx/preference/PreferenceGroup;)V
    .locals 0

    iput-object p1, p0, Laoh;->b:Laoj;

    iput-object p2, p0, Laoh;->a:Landroidx/preference/PreferenceGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 2

    iget-object v0, p0, Laoh;->a:Landroidx/preference/PreferenceGroup;

    const v1, 0x7fffffff

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->ah(I)V

    iget-object v0, p0, Laoh;->b:Laoj;

    invoke-virtual {v0}, Laoj;->f()V

    const/4 v0, 0x1

    return v0
.end method
