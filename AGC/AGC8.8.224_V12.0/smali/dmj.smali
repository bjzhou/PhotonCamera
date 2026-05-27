.class public final synthetic Ldmj;
.super Ljava/lang/Object;

# interfaces
.implements Lanu;


# instance fields
.field public final synthetic a:Ljava/lang/Object;

.field private final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Landroid/app/Activity;I)V
    .locals 0

    iput p2, p0, Ldmj;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldmj;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ldml;I)V
    .locals 0

    iput p2, p0, Ldmj;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldmj;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Levt;I)V
    .locals 0

    iput p2, p0, Ldmj;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldmj;->a:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 7

    iget v0, p0, Ldmj;->b:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Ldmj;->a:Ljava/lang/Object;

    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.os.storage.action.MANAGE_STORAGE"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return v2

    :pswitch_0
    iget-object v0, p0, Ldmj;->a:Ljava/lang/Object;

    sget v1, Lcdz;->a:I

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lcdz;->a(Ljava/lang/String;Landroid/content/Context;)V

    return v2

    :pswitch_1
    iget-object v0, p0, Ldmj;->a:Ljava/lang/Object;

    sget v1, Lcdz;->a:I

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    invoke-static {v1, v0}, Lcdz;->b(Landroid/content/Context;Landroid/app/Activity;)V

    return v2

    :pswitch_2
    iget-object v0, p0, Ldmj;->a:Ljava/lang/Object;

    check-cast v0, Levt;

    iget-object v0, v0, Levt;->ae:Levu;

    iget-object v0, v0, Levu;->h:Lfbz;

    const/4 v2, 0x2

    invoke-interface {v0, v2}, Lfbz;->aj(I)V

    return v1

    :pswitch_3
    iget-object v0, p0, Ldmj;->a:Ljava/lang/Object;

    check-cast v0, Ldml;

    iget-object v3, v0, Ldml;->c:Landroidx/preference/PreferenceScreen;

    invoke-virtual {v3}, Landroidx/preference/PreferenceGroup;->k()I

    move-result v3

    iget-object v4, v0, Ldml;->b:Landroid/content/SharedPreferences;

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    iget-object v5, v0, Ldml;->d:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ldne;

    iget-object v6, v6, Ldne;->a:Ljava/lang/Object;

    check-cast v6, Landroidx/preference/Preference;

    iget-object v6, v6, Landroidx/preference/Preference;->r:Ljava/lang/String;

    invoke-interface {v4, v6}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    :cond_0
    :goto_1
    if-ge v1, v3, :cond_1

    iget-object v5, v0, Ldml;->c:Landroidx/preference/PreferenceScreen;

    invoke-virtual {v5, v1}, Landroidx/preference/PreferenceGroup;->o(I)Landroidx/preference/Preference;

    move-result-object v5

    iget-object v5, v5, Landroidx/preference/Preference;->r:Ljava/lang/String;

    invoke-interface {v4, v5}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    iget-object v1, v0, Ldml;->c:Landroidx/preference/PreferenceScreen;

    invoke-virtual {v1}, Landroidx/preference/PreferenceGroup;->ag()V

    iget-object v1, v0, Ldml;->c:Landroidx/preference/PreferenceScreen;

    invoke-virtual {v0, v1}, Ldml;->a(Landroidx/preference/PreferenceScreen;)V

    return v2

    :pswitch_4
    iget-object v0, p0, Ldmj;->a:Ljava/lang/Object;

    check-cast v0, Ldml;

    iget-object v0, v0, Ldml;->a:Landroid/content/Context;

    invoke-static {v0}, Llgi;->a(Landroid/content/Context;)V

    return v2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
